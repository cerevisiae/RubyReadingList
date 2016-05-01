# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.destroy_all
Genre.destroy_all

fiction = Genre.create!(name: 'Fiction')
non_fiction = Genre.create!(name: 'Non-Fiction')
computers = Genre.create!(name: 'Computers')

Book.create!([{
                  title: "Neuromancer",
                  author: "William Gibson",
                  description: "I read this science fiction book in high school and it was one of my first major experiences with cyberpunk. It was amazing and I immediately fell in love with the genre.",
                  amazon_id: "0441569595",
                  rating: 4,
                  finished_on: 11.years.ago,
                  genres: [fiction, computers]
              },
              {
                  title: "Lord of Light",
                  author: "Roger Zelazny",
                  description: "Another science fiction book I read in high school and I was blown away by the unique setting of religion being re-enacted through technology.",
                  amazon_id: "0060567236",
                  rating: 4,
                  finished_on: 10.years.ago,
                  genres: [fiction]
              },
              {
                  title: "Design Patterns: Elements of Reusable Object-Oriented Software",
                  author: "Erich Gamma",
                  description: "I'm in the middle of reading this and am enjoying learning about design patterns.",
                  amazon_id: "0201633612",
                  rating: 5,
                  finished_on: nil,
                  genres: [non_fiction, computers]
              }])

p "Created #{Book.count} books"