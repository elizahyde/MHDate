# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_list = [
  [ "Elizahyde", "ehramberg@gmail.com", 28, 94105, true, true, "Helllloooooo"],
  [ "BobSF", "bob@email.com", 27, 94105, false, true, "Ladies... please rememeber that I'm not just a sex object"],
  [ "JohnMatthews", "john@email.com", 31, 94103, false, true, "Please don't msg me saying that you think I'm hot... because I already know that I am"],
  [ "MaryLovesCats", "mary@email.com", 31, 94110, true, true, "There are 3.7 trillion fish in the ocean. They're looking for one."],
  [ "Carlita", "carla@email.com", 27, 94105, true, true, "Brown-eyed-girl seeks an athletic man of comedy"],
  [ "Janeeeee", "jane@email.com", 23, 94103, true, true, "If I'm the Girl Next Door, I Hate to Think about What the Rest of the Neighborhood is Like..."],
  [ "ToMmY", "tom@email.com", 28, 94110, false, true, "Why settle for less, when you could have the best?"],
  [ "Sallymander", "sally@email.com", 26, 94105, true, true, "Are you open to a wonderful possibility?"],
  [ "Janetime", "janet@email.com", 32, 94103, true, false, "I'm having the time of my life, wanna join me?"],
  [ "LarLar", "lara@email.com", 30, 94105, true, false, "I'm really picky, but good luck"],
  [ "MobyDick", "moby@email.com", 22, 94103, false, false, "Arrogant prick with a soft sensitive side. HA, I was joking, there is no sensitive side."],
  [ "TaraSF86", "tara@email.com", 25, 94105, true, false, "Looking for laughs, fun, sun and a little romance in between..."],
  [ "Singer81", "sonia@email.com",  24, 94110, true, false, "World traveler seeks first class companion"],
  [ "VanillaICE", "paul@email.com", 32, 94105, false, false, "Women: meet your dream guy in 30 days or less!"],
  [ "NathanielBurns", "nathan@email.com", 31, 94103, false, false, "Those that follow have views that never changes"],
  [ "SoMuchTodo", "todo@email.com", 28, 94105, false, false, "I'm a bad boy who needs to be punished"]
]

user_list.each do |username, email, age, zipcode, is_female, paid_user, is_single,  profile_text, password, password_confirmation|
  User.create( username:username, email:email, age: age, zipcode: zipcode, is_female: is_female, paid_user: paid_user, is_single: true, profile_text: profile_text, password:"password", password_confirmation:"password")
end
