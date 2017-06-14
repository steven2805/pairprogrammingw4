require_relative("../db/sql_runner")



class Student

  attr_reader :id, :first_name, :last_name, :age
  attr_accessor :house

  def initialize( options )
    @id = options['id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house_id = options['house_id']
    @age = options['age'].to_i
  end

  def save()
    sql = "INSERT INTO students ( first_name, last_name, house_id, age ) VALUES ('#{ @first_name }','#{ @last_name }','#{ @house_id }','#{ @age}') 
      RETURNING *;"
    student_data = SqlRunner.run(sql)
    @id = student_data.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM students;"
    students = SqlRunner.run( sql )
    result = students.map { |student| Student.new( student ) }
    return result
  end

  def self.find( id )
    sql = "SELECT * FROM students WHERE id=#{id};"
    student = SqlRunner.run( sql )
    result = Student.new( student.first )

    return result
  end









  end





