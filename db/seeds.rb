require 'faker'
require 'json'
require 'open-uri'

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
# #--------------------#

# #----- INTERESTS -----#
# puts "About to add some interests"

# attributes = [
#   { name: 'Mode' },
#   { name: 'Travel' },
#   { name: 'Technology' },
#   { name: 'Beauty' },
#   { name: 'Sports' },
#   { name: 'Food' },
#   { name: 'Healthy' },
#   { name: 'Sustainability' },
#   { name: 'Mindfulness' },
#   { name: 'Lifestyle' },
#   { name: 'Art' },
#   { name: 'Meditation' },
#   { name: 'Automotive' },
#   { name: 'Fitness' },
#   { name: 'Architecture' },
#   { name: 'Music' },
#   { name: 'Movies' },
#   { name: 'Games' },
#   { name: 'Relationship' },
#   { name: 'Philosophy' },
#   { name: 'Animals' },
#   { name: 'Family' }
# ]

# Interest.create!(attributes)

# puts "20 interests added"
# #--------------------#

# #----- AGES -----#
# puts "About to add ages"

# truefalse = [true, false]

# 5.times do
#   Age.create!(
#     less_12: truefalse.sample,
#     age_12_18: truefalse.sample,
#     age_19_25: truefalse.sample,
#     age_26_35: truefalse.sample,
#     age_36_45: truefalse.sample,
#     age_46_55: truefalse.sample,
#     age_56_65: truefalse.sample,
#     more_65: truefalse.sample
#   )
# end

# puts "5 ages added"
# #--------------------#

# #----- CHANNELS -----#
# puts "About to add channels to Arnaud Creator"

# gender = ['Male', 'Female', 'Both']

# 30.times do
#   Channel.create!(
#     name: Faker::Currency.name,
#     url: Faker::Internet.domain_name,
#     gender: gender.sample,
#     user: User.where(email: 'arnaudcreator@sponsop.be').first,
#     age: Age.all.sample,
#     interests: Interest.all.sample(3)
#   )
# end

# puts "30 channels added to Arnaud Creator"
# #--------------------#

# USER INSTAGRAM 1
user = User.create!(
  last_name: #FAKER
  first_name: #FAKER,
  email: #FAKER,
  avatar: #TO DO
  password: 'sponsop' # OK
  )

# Add Instagram influencers

#0
Channel.create!(
  name: "jannid",
  url: "https://www.instagram.com/jannid/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )


Channel.create!(
  name: "proudlock",
  url: "https://www.instagram.com/proudlock/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )

Channel.create!(
  name: "brunchboys",
  url: "https://www.instagram.com/brunchboys/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )


Channel.create!(
  name: "jessiekass",
  url: "https://www.instagram.com/jessiekass/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )

Channel.create!(
  name: "designdschungel",
  url: "https://www.instagram.com/designdschungel/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )


Channel.create!(
  name: "adoriandeck",
  url: "https://www.instagram.com/adoriandeck/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )


Channel.create!(
  name: "hinddeer",
  url: "https://www.instagram.com/hinddeer/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )


Channel.create!(
  name: "brunchboys",
  url: "https://www.instagram.com/brunchboys/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )


Channel.create!(
  name: "atacadas",
  url: "https://www.instagram.com/atacadas/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
#10

Channel.create!(
  name: "simplykennedy_",
  url: "https://www.instagram.com/simplykennedy_/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "sydneyleroux",
  url: "https://www.instagram.com/sydneyleroux/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "ninawilliamsblog",
  url: "https://www.instagram.com/ninawilliamsblog/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "mariekondo",
  url: "https://www.instagram.com/mariekondo/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "massy.arias",
  url: "https://www.instagram.com/massy.arias/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )

Channel.create!(
  name: "akiniko",
  url: "https://www.instagram.com/akiniko/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "simeonpanda",
  url: "https://www.instagram.com/simeonpanda/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "saudahsaleeminteriors",
  url: "https://www.instagram.com/saudahsaleeminteriors/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "shaaanxo",
  url: "https://www.instagram.com/shaaanxo/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "zoesugg",
  url: "https://www.instagram.com/zoesugg/?hl=en",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
#20


Channel.create!(
  name: "juliahengel",
  url: "https://www.instagram.com/juliahengel/?hl=en",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "chiaraferragni",
  url: "https://www.instagram.com/chiaraferragni/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "imjennim",
  url: "https://www.instagram.com/imjennim/?hl=en",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "majawyh",
  url: "https://www.instagram.com/majawyh/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "marianodivaio",
  url: "https://www.instagram.com/marianodivaio/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )

Channel.create!(
  name: "benlowy",
  url: "https://www.instagram.com/benlowy/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "muradosmann",
  url: "https://www.instagram.com/muradosmann/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "lindseychilds",
  url: "https://www.instagram.com/lindseychilds/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "donjay",
  url: "https://www.instagram.com/donjay/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "jackharries",
  url: "https://www.instagram.com/jackharries/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
# 30

Channel.create!(
  name: "travelbabbo",
  url: "https://www.instagram.com/travelbabbo/?hl=en",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "theplanetd",
  url: "https://www.instagram.com/theplanetd/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "fatgirlstraveling",
  url: "https://www.instagram.com/fatgirlstraveling/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "expertvagabond",
  url: "https://www.instagram.com/expertvagabond/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "bucketlistjourney",
  url: "https://www.instagram.com/bucketlistjourney/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )

#40

Channel.create!(
  name: "jamieoliver",
  url: "https://www.instagram.com/jamieoliver/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "les petites pestes",
  url: "https://www.instagram.com/lespetitespestes/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "avikoren",
  url: "https://www.instagram.com/avikoren/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "gaelle_vp",
  url: "https://www.instagram.com/gaelle_vp//",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "audreycosty",
  url: "https://www.instagram.com/audreycosty/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
#50


Channel.create!(
  name: "milkywaysblueyes",
  url: "https://www.instagram.com/milkywaysblueyes/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "bruxellesfood",
  url: "https://www.instagram.com/bruxellesfood/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "bruxelles.foodguide",
  url: "https://www.instagram.com/bruxelles.foodguide/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "bonjourgeorges",
  url: "https://www.instagram.com/bonjourgeorges/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "earthyandy",
  url: "https://www.instagram.com/earthyandy/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )

#60

Channel.create!(
  name: "jennaminnie",
  url: "https://www.instagram.com/jennaminnie/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "gaellegd",
  url: "https://www.instagram.com/gaellegd/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "aurelievandaelen",
  url: "https://www.instagram.com/aurelievandaelen/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "talisalo",
  url: "https://www.instagram.com/talisalo/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "vexx",
  url: "https://www.instagram.com/vexx/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )

#70


Channel.create!(
  name: "chloekitembo",
  url: "https://www.instagram.com/chloekitembo/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "masoomminawala",
  url: "https://www.instagram.com/masoomminawala/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "nathalievandenberg",
  url: "https://www.instagram.com/nathalievandenberg/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "waystostudy",
  url: "https://www.instagram.com/waystostudy/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "aurelaskandaj",
  url: "https://www.instagram.com/aurelaskandaj/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK

  #80


Channel.create!(
  name: "tianykirilove",
  url: "https://www.instagram.com/tianykirilove/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "anthonylastella",
  url: "https://www.instagram.com/anthonylastella/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "audmarshmaloo",
  url: "https://www.instagram.com/audmarshmaloo/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "lailazaouiofficiel",
  url: "https://www.instagram.com/lailazaouiofficiel/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "ankatrien",
  url: "https://www.instagram.com/ankatrien/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK

  #90

  Channel.create!(
  name: "anknook",
  url: "https://www.instagram.com/anknook/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "queenofjetlags",
  url: "https://www.instagram.com/queenofjetlags/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "polabur",
  url: "https://www.instagram.com/polabur/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "laurenlewiss_",
  url: "https://www.instagram.com/laurenlewiss_/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "shrads",
  url: "https://www.instagram.com/shrads/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK

#100

Channel.create!(
  name: "sebastien.nagy",
  url: "https://www.instagram.com/sebastien.nagy/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "lebackpacker",
  url: "https://www.instagram.com/lebackpacker/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "annecatherine_cloclo",
  url: "https://www.instagram.com/annecatherine_cloclo/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "matthiasgeerts",
  url: "https://www.instagram.com/matthiasgeerts/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "dimitrivegasandlikemike",
  url: "https://www.instagram.com/dimitrivegasandlikemike/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK

  #110

Channel.create!(
  name: "crisam",
  url: "https://www.instagram.com/crisam/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "sofievalkiers",
  url: "https://www.instagram.com/sofievalkiers/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "welovebrussels",
  url: "https://www.instagram.com/welovebrussels/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "nathalievandenberg",
  url: "https://www.instagram.com/nathalievandenberg/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "bibleoffashionjulie",
  url: "https://www.instagram.com/bibleoffashionjulie/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK


  #120
Channel.create!(
  name: "noemiehappart",
  url: "https://www.instagram.com/noemiehappart/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "sofievalkiers",
  url: "https://www.instagram.com/sofievalkiers/?utm_source=ig_embed",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "r_babyberry",
  url: "https://www.instagram.com/r_babyberry/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "i_am_aileen",
  url: "https://www.instagram.com/i_am_aileen/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
Channel.create!(
  name: "thetinynomad",
  url: "https://www.instagram.com/thetinynomad/",
  gender: gender.sample, #OK
  user: user, #OK
  age: Age.all.sample, #OK
  interests: Interest.all.sample(3) #OK
  )
# 120 Instagram influencers

Channel.create!(
 name: "Dimitri Vegas"
 url: 'https://www.youtube.com/channel/UCxmNWF8fQ4miqfGs84dFVrg',
 gender: gender.sample, #OK
 user: user, #OK
 age: Age.all.sample, #OK
 interests: "Music",
​
 #--------------------##
​
 # user1
​
Channel.create!(
 name: "Stromae"
 url: "https://youtube.com/channel/UCXF0YCBWewAj3RytJUAivGA",
 gender: gender.sample, #OK
 user: user, #OK
 age: Age.all.sample, #OK
 interests: "Music"
​
 #--------------------#
 # user1
​
Channel.create!(
 name: "Iliass TiiwTiiw",
 url: "https://www.youtube.com/channel/UCBOGNP-uP69PV7Ufh7da7Rw",
 gender: gender.sample, #OK
 user: user, #OK
 age: Age.all.sample, #OK
 interests: "Music",
​
 #--------------------#
 # user1
​
Channel.create!(
 name: "Vexx",
 url: "https://youtube.com/channel/UC6FrNJRbr-32LUTmYw1nHFw",
 gender: gender.sample, #OK
 user: user, #OK
 age: Age.all.sample, #OK
 interests: "Art",
​
 #--------------------#
 # user1
​
Channel.create!(
 name: "Jimmy Labeu",
 url: "https://youtube.com/channel/UC1_1mcW4AwdcDApXLzMge4A",
 gender: gender.sample, #OK
 user: user, #OK
 age: Age.all.sample, #OK
 interests: "Lifestyle",
​
 #--------------------#
 # user1
​
Channel.create!(
 name: "Luffy",
 url: "https://youtube.com/channel/UC5N5jACt1Si7YPdy-_2AUag",
 gender: gender.sample, #OK
 user: user, #OK
 age: Age.all.sample, #OK
 interests: "Beauty",
​
 #--------------------#
 # user1
​
Channel.create!(
 name: "Gaelle Garcia"
 url: "https://youtube.com/channel/UCI0mw0nNF16fl0hQUD985VA",
 gender: gender.sample, #OK
 user: user, #OK
 age: Age.all.sample, #OK
 interests: "Lifestyle",
​
 #--------------------#
 # user1
​
Channel.create!(
 name: "XEETECHCARE",
 url: "https://youtube.com/channel/UCTqMx8l2TtdZ7_1A40qrFiQ",
 gender: gender.sample, #OK
 user: user, #OK
 age: Age.all.sample, #OK
 interests: "Technology",
​
 #--------------------#
 # user1
​
Channel.create!(
 name: "Math se fait des films",
 url: "https://youtube.com/channel/UChV2oq_a-UZfJF-UiW0u-DQ",
 gender: gender.sample, #OK
 user: user, #OK
 age: Age.all.sample, #OK
 interests: "Lifestyle",
​
 #--------------------#
 # user1
​
Channel.create!(
 name: "MojoOnPC",
 url: "https://www.youtube.com/channel/UCd4IkWsJxct7nDYSKrQoMyA",
 gender: gender.sample, #OK
 user: user, #OK
 age: Age.all.sample, #OK
 interests: ["Technology", "Games"],
 #--------------------#

