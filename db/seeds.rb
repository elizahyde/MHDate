# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_list = [
  [ "Elizahyde", "ehramberg@gmail.com", 28, 94105, true, true],
  [ "BobSF", "bob@email.com", 27, 94105, false, true],
  [ "JohnMatthews", "john@email.com", 31, 94103, false, true],
  [ "MaryLovesCats", "mary@email.com", 31, 94110, true, true],
  [ "Carlita", "carla@email.com", 27, 94105, true, true],
  [ "Janeeeee", "jane@email.com", 23, 94103, true, true],
  [ "ToMmY", "tom@email.com", 28, 94110, false, true],
  [ "Sallymander", "sally@email.com", 26, 94105, true, true],
  [ "Janetime", "janet@email.com", 32, 94103, true, false],
  [ "LarLar", "lara@email.com", 30, 94105, true, false],
  [ "MobyDick", "moby@email.com", 22, 94103, false, false],
  [ "TaraSF86", "tara@email.com", 25, 94105, true, false],
  [ "Singer81", "sonia@email.com",  24, 94110, true, false],
  [ "VanillaICE", "paul@email.com", 32, 94105, false, false],
  [ "NathanielBurns", "nathan@email.com", 31, 94103, false, false],
  [ "SoMuchTodo", "todo@email.com", 28, 94105, false, false]
]

user_list.each do |username, email, age, zipcode, is_female, paid_user, is_single, password, password_confirmation|
  User.create( username:username, email:email, age: age, zipcode: zipcode, is_female: is_female, paid_user: paid_user, is_single: true, password:"password", password_confirmation:"password")
end
