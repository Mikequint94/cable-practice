# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Chatroom.destroy_all
Message.destroy_all
User.destroy_all

chatroom = Chatroom.create!({topic: "Chat about Dogs"})
user1 = User.create!(username: "Mikey")
user2 = User.create!(username: "Bob")
user3 = User.create!(username: "Cat")
# message1 = Message.create!({body: "I love dogs.", chatroom_id: chatroom.id, user_id: user1.id})
# message2 = Message.create!({body: "Me too!", chatroom_id: chatroom.id, user_id: user2.id})
# message3 = Message.create!({body: "cool beans", chatroom_id: chatroom.id, user_id: user3.id})
