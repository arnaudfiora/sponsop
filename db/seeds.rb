require 'faker'

# # User.destroy_all
# # puts "Destroyed all users"

# #----- CREATORS -----#
# # Admin creators
# puts "About to add some ADMIN creators... "

# attributes = [{
#   last_name: 'Thiran',
#   first_name: 'Harold',
#   email: 'haroldcreator@sponsop.be',
#   avatar: 'https://avatars.githubusercontent.com/harold9898',
#   password: 'sponsop'
#   },
#   {
#   last_name: 'Fiora',
#   first_name: 'Arnaud',
#   email: 'arnaudcreator@sponsop.be',
#   avatar: 'https://avatars.githubusercontent.com/arnaudfiora',
#   password: 'sponsop',
#   },
#   {
#   last_name: 'de Streel',
#   first_name: 'Eloïse',
#   email: 'eloisecreator@sponsop.be',
#   avatar: 'https://avatars.githubusercontent.com/elo29597',
#   password: 'sponsop',
#   },
#   {
#   last_name: 'Di Filippo',
#   first_name: 'Dylan',
#   email: 'dylancreator@sponsop.be',
#   avatar: 'https://avatars.githubusercontent.com/dylandifilippo',
#   password: 'sponsop',
#   }]

# User.create!(attributes)

# puts "4 ADMIN creators added"

# # puts "About to add some creators... "

# # 50.times do
# #   User.create!(
# #     last_name: Faker::Name.unique.last_name,
# #     first_name: Faker::Name.unique.first_name,
# #     password: "1234567",
# #     email: Faker::Internet.unique.email,
# #     avatar: Faker::Avatar.image
# #   )
# # end

# # puts "5O creators added"
# #--------------------#

# #----- BRANDS -----#
# # Admin brands
# puts "About to add some ADMIN brands... "

# attributes = [{
#   last_name: 'Thiran',
#   first_name: 'Harold',
#   email: 'haroldbrand@sponsop.be',
#   avatar: 'https://avatars.githubusercontent.com/harold9898',
#   is_brand: true,
#   company: 'Unilever',
#   password: 'sponsop'
#   },
#   {
#   last_name: 'Fiora',
#   first_name: 'Arnaud',
#   email: 'arnaudbrand@sponsop.be',
#   avatar: 'https://avatars.githubusercontent.com/arnaudfiora',
#   is_brand: true,
#   password: 'sponsop',
#   company: 'Veja'
#   },
#   {
#   last_name: 'de Streel',
#   first_name: 'Eloïse',
#   email: 'eloisebrand@sponsop.be',
#   avatar: 'https://avatars.githubusercontent.com/elo29597',
#   is_brand: true,
#   password: 'sponsop',
#   company: 'Disney'
#   },
#   {
#   last_name: 'Di Filippo',
#   first_name: 'Dylan',
#   email: 'dylanbrand@sponsop.be',
#   avatar: 'https://avatars.githubusercontent.com/dylandifilippo',
#   is_brand: true,
#   password: 'sponsop',
#   company: 'Levis'
#   }]

# User.create!(attributes)

# puts "4 ADMIN brands added"
#--------------------#

#----- INTERESTS -----#
puts "About to add some interests"

attributes = [
  { name: 'Mode' },
  { name: 'Travel' },
  { name: 'Technology' },
  { name: 'Beauty' },
  { name: 'Sports' },
  { name: 'Food' },
  { name: 'Healthy' },
  { name: 'Sustainability' },
  { name: 'Mindfulness' },
  { name: 'Lifestyle' },
  { name: 'Art' },
  { name: 'Meditation' },
  { name: 'Automotive' },
  { name: 'Fitness' },
  { name: 'Architecture' },
  { name: 'Music' },
  { name: 'Movies' },
  { name: 'Games' },
  { name: 'Relationship' },
  { name: 'Philosophy' },
  { name: 'Animals' },
  { name: 'Family' }
]

Interest.create!(attributes)

puts "20 interests added"
#--------------------#

