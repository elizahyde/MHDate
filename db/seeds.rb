# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_list = [
  [ "Elizahyde", "ehramberg@gmail.com", 28, 94105, true, true, "Im doing good these days."],
  [ "BobSF", "bob@email.com", 27, 94105, false, true, "I have psychizoaffective disorder"],
  [ "JohnMatthews", "john@email.com", 31, 94103, false, true, "I am looking for a fellow depressive."],
  [ "MaryLovesCats", "mary@email.com", 31, 94110, true, true, "Looking for someone who gets ME"],
  [ "Carlita", "carla@email.com", 27, 94105, true, true, "I have anxiety issues that are under control"],
  [ "ToMmY", "tom@email.com", 28, 94110, false, true, "I am major OCD so just warning you"],
  [ "Sallymander", "sally@email.com", 26, 94105, true, true, "Im bipolar..looking for a fellow bipolar."],
  [ "Janetime", "janet@email.com", 32, 94103, true, false, "Im having the time of my life, wanna join me?"],
  [ "LarLar", "lara@email.com", 30, 94105, true, false, "Im really picky, so good luck"],
  [ "MobyDick", "moby@email.com", 22, 94103, false, false, "I am 7 years sober, bipolar and looking for a sober partner"],
  [ "TaraSF86", "tara@email.com", 25, 94105, true, false, "Looking for laughs, fun, sun and a little romance in between..."],
  [ "Singer81", "sonia@email.com",  24, 94110, true, false, "Im not ready to tell you yet"],
  [ "VanillaICE", "paul@email.com", 32, 94105, false, false, "Im an artist who also happens to suffer from a mood disorder"],
  [ "NathanielBurns", "nathan@email.com", 31, 94103, false, false, "I suffer from depression but it is good these days"],
  [ "SoMuchTodo", "todo@email.com", 28, 94105, false, false, "Ill tell you later."]
]

user_list.each do |username, email, age, zipcode, is_female, paid_user, is_single,  profile_text, password, password_confirmation|
  User.create( username:username, email:email, age: age, zipcode: zipcode, is_female: is_female, paid_user: paid_user, is_single: true, profile_text: profile_text, password:"password", password_confirmation:"password")
end

end