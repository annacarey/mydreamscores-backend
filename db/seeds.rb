# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

JournalEntry.destroy_all
Journal.destroy_all
User.destroy_all

testuser = User.create(email: "testuser", password_digest: "123")
anna = User.create(email: "anna", password_digest: "123")
testuser2 = User.create(email: "testuser", password_digest: "123")
coronavirus = Journal.create(title: "Coronavirus", user: testuser)
coronavirus2 = Journal.create(title: "Coronavirus", user: anna)
coronavirus3 = Journal.create(title: "Coronavirus", user: testuser2)
JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-03-16 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-03-14 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-03-13 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-03-12 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-03-11 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-03-09 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-03-08 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-03-06 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-03-05 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-03-04 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-03-02 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-03-00 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-02-27 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus, 
created_at: "2020-02-23 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-03-14 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-03-13 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-03-12 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-03-11 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-03-09 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-03-08 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-03-06 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-03-05 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-03-04 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-03-02 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-03-00 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-02-27 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus2, 
created_at: "2020-02-23 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus3, 
created_at: "2020-03-13 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus3, 
created_at: "2020-03-12 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus3, 
created_at: "2020-03-11 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus3, 
created_at: "2020-03-09 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus3, 
created_at: "2020-03-08 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus3, 
created_at: "2020-03-06 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus3, 
created_at: "2020-03-05 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus3, 
created_at: "2020-03-04 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus3, 
created_at: "2020-03-02 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus3, 
created_at: "2020-03-00 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus3, 
created_at: "2020-02-27 13:12:06", updated_at: "2020-03-16 13:12:06")

JournalEntry.create(content: "test1", sentiment: rand(-1.0..1.0), magnitude: rand(-1.0..1.0), journal: coronavirus3, 
created_at: "2020-02-23 13:12:06", updated_at: "2020-03-16 13:12:06")


