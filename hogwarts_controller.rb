require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/student')
require_relative('models/house')

# INDEX
get '/students' do
  @students = Student.all()
  erb(:students)
end

get '/house_page' do
  @houses = House.all()
  erb(:house_page)
end 

# NEW
get '/students/new' do
  @house = House.all()
  erb(:new)
end

post '/students' do
  @student = Student.new(params)
  @student.save
  redirect to '/students'
end


# binding.pry
# nil

