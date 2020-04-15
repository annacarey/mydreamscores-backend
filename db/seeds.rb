# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# JournalEntry.destroy_all
# Journal.destroy_all
User.destroy_all

testuser = User.create(email: "hello@gmail.com", zipcode: "10501", password: "123456")

anna = User.create(email: "anna@gmail.com", zipcode: "10583", password: "123456")

testuser2 = User.create(email: "flatironstudent@gmail.com", zipcode: "90037", password: "123456")

coronavirus = Journal.create(title: "Coronavirus", user: testuser)
coronavirus2 = Journal.create(title: "Coronavirus", user: anna)
coronavirus3 = Journal.create(title: "Coronavirus", user: testuser2)

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-04-02 18:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '11211')

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-04-07 15:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '11210')

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-04-08 15:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '11211')

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-04-06 15:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10519')

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-04-04 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '11211')

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-04-03 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10011')

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-04-02 18:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10002')

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-04-01 15:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10002')

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-03-31 15:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10002')

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-03-30 15:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10002')

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-04-04 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10002')

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-04-05 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10002')

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-04-06 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-04-07 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-04-08 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-04-09 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-04-04 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-04-05 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-04-06 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-04-07 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-04-08 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-04-09 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-04-10 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-04-10 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-04-02 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-04-01 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-04-05 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-04-06 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-04-06 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-04-06 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-04-06 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-04-06 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-04-07 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-04-0713:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-04-07 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014')

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-04-07 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-04-07 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-04-07 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-04-07 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '10014' )

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus3, 
created_at: "2020-04-07 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '90001')

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus3, 
created_at: "2020-04-07 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '90001')

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus3, 
created_at: "2020-04-07 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '90037')

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus3, 
created_at: "2020-04-09 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '90001')

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus3, 
created_at: "2020-04-08 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '90001')

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus3, 
created_at: "2020-04-07 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '90001')

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus3, 
created_at: "2020-04-09 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '90001')

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus3, 
created_at: "2020-04-10 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '90001')

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus3, 
created_at: "2020-04-07 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '90001')

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus3, 
created_at: "2020-04-07 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '90001')

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus3, 
created_at: "2020-04-07 13:12:06", updated_at: "2020-03-16 13:12:06", zipcode: '90001')

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus3, 
created_at: "2020-04-07 13:12:06", updated_at: "2020-03-16 13:12:06",  zipcode: '90001')


