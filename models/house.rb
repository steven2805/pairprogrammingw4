require_relative("../db/sql_runner")

class House

  attr_reader :id, :name

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end

  def save 
    sql = "INSERT INTO houses(name) VALUES ('#{@name}') RETURNING id;"
    @id = SqlRunner.run(sql)[0]['id'].to_i()
  end

  def self.all()
    sql = "SELECT * FROM houses;"
    houses = SqlRunner.run(sql)
    result = houses.map { |house| House.new(house)}
    return result
  end 

  def self.find(id)
    sql - "SELECT * FROM houses WHERE id=#{id};"
    house = SqlRunner.run (sq)
    result = House.new(house.first )

    return result 
  end 










end