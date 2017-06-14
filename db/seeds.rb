require('pry')
require_relative('../models/student')
require_relative('../models/house')

house1 = House.new({
  'name' => 'Pepperoni'
  })
house2 = House.new({
  'name' => "Italian Sausage"
  })

house1.save
house2.save

student1 = Student.new({
  "first_name" => "Walter",
  "last_name" => "White",
  "house_id" => house1.id,
  "age" => 30
})

student2 = Student.new({
  "first_name" => "Jesse",
  "last_name" => "Pinkman",
  "house_id" => house2.id,
  "age" => 12
})


student1.save
student2.save

binding.pry

nil







