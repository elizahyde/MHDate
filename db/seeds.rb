# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_list = [
  [ "Elizahyde", "ehramberg@gmail.com", 28, 94105, true, true, "Helllloooooo"],
  [ "BobSF", "bob@email.com", 27, 94105, false, true, "Ladies... please rememeber that Im not just a sex object"],
  [ "JohnMatthews", "john@email.com", 31, 94103, false, true, "Please dont msg me saying that you think Im hot... because I already know that I am"],
  [ "MaryLovesCats", "mary@email.com", 31, 94110, true, true, "There are 3.7 trillion fish in the ocean. Theyre looking for one."],
  [ "Carlita", "carla@email.com", 27, 94105, true, true, "Brown-eyed-girl seeks an athletic man of comedy"],
  [ "Janeeeee", "jane@email.com", 23, 94103, true, true, "If Im the Girl Next Door, I Hate to Think about What the Rest of the Neighborhood is Like..."],
  [ "ToMmY", "tom@email.com", 28, 94110, false, true, "Why settle for less, when you could have the best?"],
  [ "Sallymander", "sally@email.com", 26, 94105, true, true, "Are you open to a wonderful possibility?"],
  [ "Janetime", "janet@email.com", 32, 94103, true, false, "Im having the time of my life, wanna join me?"],
  [ "LarLar", "lara@email.com", 30, 94105, true, false, "Im really picky, but good luck"],
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

photo_list = [
  [ 1, "Me and some birds", "de72b6ff-b007-4f4f-bb94-63c479538c1d/Screen%20Shot%202013-05-07%20at%207.36.38%20PM.png"],
  [ 2, "Life", "7b4a5932-e9c8-47d4-8ae4-dbed488df4fd/562678_10151085466955141_1649844718_n.jpg"],
  [ 3, "At the beach with jay", "878a9df3-0395-4b25-8e7b-5c06042cdc35/479729_10102446307397197_809946271_n.jpg"],
  [ 4, "Loving life", "39e63088-4e2e-4051-9d74-8839393bcd07/6349_884912216993_983464321_n.jpg"],
  [ 5, "Derby!", "263eeebb-5de0-4f48-90cc-7b6ebdf1d0f9/11053_10102379321756957_1607915475_n.jpg"],
  [ 6, "Pupppiiiess", "d7c6b4c9-748a-4f73-9df8-2399cd7f7fa7/268801_10151410834262611_915347643_n.jpg"],
  [ 7, "Living it up", "6d18e1e2-8298-462b-987f-c4ffe3977d07/69653_10102217413457487_1200175951_n.jpg"],
  [ 8, "Just me", "101e5d79-2df1-4405-bb8a-79dccbc8658a/189371_760116932757_1113670514_n.jpg"],
  [ 9, "Just me", "431fa154-6e0c-496f-a65b-ff31a8c0fd51/582515_695205242695_1151811496_n.jpg"],
  [ 10, "Happy", "287e5da3-2ac7-445c-9723-d96e954d8e82/222175_158622407534427_5892025_n.jpg"],
  [ 11, "Work photo", "79b6bc42-639f-4a4b-a7c7-e870a4e42979/946694_10100760709134591_933781374_n.jpg"],
  [ 12, "Me and my pup", "5c0b3ed8-726e-4b00-a616-2d372d06a83b/386080_10100478776499887_1896766741_n.jpg"],
  [ 13, "Bubbles!", "a11bba8d-6be6-4ec5-890d-87c9d04ca91b/380982_10101917034434433_1990119714_n.jpg"],
  [ 14, "yeeah yeaah", "e3e3dbbd-d7ed-4dad-b028-67a968e52064/262773_10100272383113885_4385184_n.jpg"],
  [ 15, "Tasty meal", "5bf23de1-6617-4e81-8a26-ea05d84db831/1001160_10102494139022237_374793929_n.jpg"],
  [ 16, "headshots", "a6ba393e-d3c1-4b2e-91d3-2b4c64695f9d/264039_10100314056340407_1487549_n.jpg"]
]

photo_list.each do |user_id, caption, image|
  Photo.create( user_id:user_id, caption:caption, image:image)
end