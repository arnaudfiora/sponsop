# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.all.destroy_all
puts "About to add some users... "

50.times do
  User.create!(
    last_name: Faker::Name.unique.last_name,
    first_name: Faker::Name.unique.first_name,
    password: "1234567",
    email: Faker::Internet.unique.email,
    avatar: Faker::Avatar.image
  )
end


puts "About to add some companies... "

# Company harold
attributes = [{
  last_name: 'Thiran',
  first_name: 'Harold',
  email: 'harold_1998@live.be',
  avatar: 'https://avatars.githubusercontent.com/harold9898',
  company: 'Unilever',
  password: 'sponsop'
},
# Company Arnaud
{
    last_name: 'Fiora',
    first_name: 'Arnaud',
    email: 'arnaudfiora@hotmail.com',
    avatar: 'https://avatars.githubusercontent.com/arnaudfiora',
    password: 'sponsop',
    company: 'Veja'
  },
# Company Eloïse
  {
    last_name: 'de Streel',
    first_name: 'Eloïse',
    email: 'Eloise@25927.be',
    avatar: 'https://avatars.githubusercontent.com/elo29597',
    password: 'sponsop',
    company: 'Disney'
  },
  # Company Dylan
  {
    last_name: 'Di Filippo',
    first_name: 'Dylan',
    email: 'Dylandifili@po.be',
    avatar: 'https://avatars.githubusercontent.com/dylandifilippo',
    password: 'sponsop',
    company: 'Levis'
  }]

user = User.new {attributes}
user.is_brand = true
user.save




