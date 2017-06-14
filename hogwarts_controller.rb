require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/student')

# INDEX
get '/students' do
  @students = Student.all()
  erb(:students)
end

# NEW
get '/students/new' do
  erb(:new)
end

post '/students' do
  @student = Student.new(params)
  @student.save
  redirect to '/students'
end

