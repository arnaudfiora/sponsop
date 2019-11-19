require 'faker'
require 'json'
require 'open-uri'

api_url_avatar = 'https://randomuser.me/api/'


# User.destroy_all

# #----- ADMIN -----#
# Admin creator
puts "About to add 1 ADMIN creator "

User.create!(
  last_name: 'Sponsop',
  first_name: 'Team',
  email: 'admin@sponsop.be',
  avatar: 'https://avatars.githubusercontent.com/harold9898',
  password: 'sponsop'
)

puts "1 ADMIN creator added"

# Admin brand
puts "About to add 1 ADMIN brand "

User.create!(
  last_name: 'Sponsop',
  first_name: 'Team',
  is_brand: true,
  company: 'Sponsop Corporation',
  email: 'brand@sponsop.be',
  avatar: 'https://avatars.githubusercontent.com/harold9898',
  password: 'sponsop'
)

puts "1 ADMIN brand added"
# #--------------------#

# #----- INTERESTS -----#
puts "About to add some interests"

attributes = [
  { name: 'Animals' },
  { name: 'Architecture' },
  { name: 'Art' },
  { name: 'Automotive' },
  { name: 'Beauty' },
  { name: 'Family' },
  { name: 'Fitness' },
  { name: 'Food' },
  { name: 'Games' },
  { name: 'Healthy' },
  { name: 'Lifestyle' },
  { name: 'Meditation' },
  { name: 'Mindfulness' },
  { name: 'Mode' },
  { name: 'Movies' },
  { name: 'Music' },
  { name: 'Philosophy' },
  { name: 'Relationship' },
  { name: 'Sports' },
  { name: 'Sustainability' },
  { name: 'Technology' },
  { name: 'Travel' }
]

Interest.create!(attributes)

puts "20 interests added"
# #--------------------#

# #----- AGES -----#
puts "About to add ages"

Age.create!( less_12: true, age_12_18: false, age_19_25: false, age_26_35: false, age_36_45: false, age_46_55: false, age_56_65: false, more_65: false )
Age.create!( less_12: false, age_12_18: true, age_19_25: true, age_26_35: false, age_36_45: false, age_46_55: false, age_56_65: false, more_65: false )
Age.create!( less_12: true, age_12_18: false, age_19_25: true, age_26_35: true, age_36_45: true, age_46_55: true, age_56_65: false, more_65: false )
Age.create!( less_12: true, age_12_18: true, age_19_25: false, age_26_35: false, age_36_45: false, age_46_55: false, age_56_65: false, more_65: false )
Age.create!( less_12: false, age_12_18: false, age_19_25: false, age_26_35: false, age_36_45: true, age_46_55: true, age_56_65: true, more_65: false )
Age.create!( less_12: false, age_12_18: false, age_19_25: false, age_26_35: false, age_36_45: false, age_46_55: false, age_56_65: true, more_65: true )
Age.create!( less_12: false, age_12_18: false, age_19_25: true, age_26_35: false, age_36_45: false, age_46_55: false, age_56_65: false, more_65: false )
Age.create!( less_12: false, age_12_18: false, age_19_25: false, age_26_35: true, age_36_45: false, age_46_55: false, age_56_65: false, more_65: false )
Age.create!( less_12: false, age_12_18: true, age_19_25: false, age_26_35: false, age_36_45: false, age_46_55: false, age_56_65: false, more_65: false )
Age.create!( less_12: false, age_12_18: false, age_19_25: false, age_26_35: false, age_36_45: false, age_46_55: false, age_56_65: false, more_65: true )

puts "10 ages added"
# #--------------------#

# #----- USERS CREATORS -----#
puts "About to add creators"
250.times do
  result = JSON.parse(open(api_url_avatar).read)
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    avatar: result["results"].first["picture"]["large"],
    password: 'sponsop'
  )
end

puts "250 creators added"
# #--------------------#



#----- TWITCH CHANNELS -----#
# puts "About to add Twitch Channels"

gender = ['Male', 'Female', 'Both']
counter = User.first.id

counter += 1
Channel.create!(
  name: 'solary',
  url: 'https://www.twitch.tv/solary',
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
  name: 'lestream',
  url: 'https://www.twitch.tv/lestream',
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
  name: 'toupO',
  url: 'https://www.twitch.tv/toup0',
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
  name: 'manuelferraratv',
  url: 'https://www.twitch.tv/manuelferraratv',
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
  name: 'Shaunz',
  url: 'https://www.twitch.tv/shaunz',
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
  name: 'Radin',
  url: 'https://www.twitch.tv/radin',
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
  name: 'HeryarTV',
  url: 'https://www.twitch.tv/heyartv',
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
  name: 'At0mium',
  url: 'https://www.twitch.tv/at0mium',
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
  name: 'OgamingLoL',
  url: 'https://www.twitch.tv/ogaminglol',
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
  name: 'Gius',
  url: 'https://www.twitch.tv/gius',
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
)
#10------

counter += 1
Channel.create!(
  name: 'Mynthos',
  url: 'https://www.twitch.tv/mynthos',
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
  name: 'IFreshHD',
  url: 'https://www.twitch.tv/ifresh_hd',
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
  name: 'ManaProd',
  url: 'https://www.twitch.tv/manaprod',
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
  name: 'SneakyFUT',
  url: 'https://www.twitch.tv/sneakyfut',
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
  name: 'uNKOE',
  url: 'https://www.twitch.tv/unkoe',
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
  name: 'JeanRTV',
  url: 'https://www.twitch.tv/jeanrtv',
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
  name: 'KRLAN',
  url: 'https://www.twitch.tv/krlan',
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
  name: 'Anth0xc0lab0',
  url: 'https://www.twitch.tv/anth0xc0lab0y',
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
  name: 'TricTracTV',
  url: 'https://www.twitch.tv/trictractv',
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
  name: 'Voci',
  url: 'https://www.twitch.tv/voci',
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
  name: 'potxeca_fr',
  url: 'https://www.twitch.tv/potxeca_fr',
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
  name: 'kotwicz91',
  url: 'https://www.twitch.tv/kotwicz91',
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
)

puts "22 Twitch channels added"

puts "About to add instagram Channels"
#----- INSTAGRAM CHANNELS -----#

counter += 1
Channel.create!(
  name: "jannid",
  url: "https://www.instagram.com/jannid/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "proudlock",
  url: "https://www.instagram.com/proudlock/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "brunchboys",
  url: "https://www.instagram.com/brunchboys/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "jessiekass",
  url: "https://www.instagram.com/jessiekass/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "designdschungel",
  url: "https://www.instagram.com/designdschungel/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )


counter += 1
Channel.create!(
  name: "adoriandeck",
  url: "https://www.instagram.com/adoriandeck/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )


counter += 1
Channel.create!(
  name: "hinddeer",
  url: "https://www.instagram.com/hinddeer/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )


counter += 1
Channel.create!(
  name: "brunchboys",
  url: "https://www.instagram.com/brunchboys/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )


counter += 1
Channel.create!(
  name: "atacadas",
  url: "https://www.instagram.com/atacadas/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )
#10

counter += 1
Channel.create!(
  name: "simplykennedy_",
  url: "https://www.instagram.com/simplykennedy_/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "sydneyleroux",
  url: "https://www.instagram.com/sydneyleroux/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "ninawilliamsblog",
  url: "https://www.instagram.com/ninawilliamsblog/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "mariekondo",
  url: "https://www.instagram.com/mariekondo/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "massy.arias",
  url: "https://www.instagram.com/massy.arias/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "akiniko",
  url: "https://www.instagram.com/akiniko/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "simeonpanda",
  url: "https://www.instagram.com/simeonpanda/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "saudahsaleeminteriors",
  url: "https://www.instagram.com/saudahsaleeminteriors/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "shaaanxo",
  url: "https://www.instagram.com/shaaanxo/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "zoesugg",
  url: "https://www.instagram.com/zoesugg/?hl=en",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

#20

counter += 1
Channel.create!(
  name: "juliahengel",
  url: "https://www.instagram.com/juliahengel/?hl=en",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "chiaraferragni",
  url: "https://www.instagram.com/chiaraferragni/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )
counter += 1
Channel.create!(
  name: "imjennim",
  url: "https://www.instagram.com/imjennim/?hl=en",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "majawyh",
  url: "https://www.instagram.com/majawyh/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )
counter += 1
Channel.create!(
  name: "marianodivaio",
  url: "https://www.instagram.com/marianodivaio/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "benlowy",
  url: "https://www.instagram.com/benlowy/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "muradosmann",
  url: "https://www.instagram.com/muradosmann/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "lindseychilds",
  url: "https://www.instagram.com/lindseychilds/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "donjay",
  url: "https://www.instagram.com/donjay/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "jackharries",
  url: "https://www.instagram.com/jackharries/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
)

# 30

counter += 1
Channel.create!(
  name: "travelbabbo",
  url: "https://www.instagram.com/travelbabbo/?hl=en",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "theplanetd",
  url: "https://www.instagram.com/theplanetd/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "fatgirlstraveling",
  url: "https://www.instagram.com/fatgirlstraveling/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "expertvagabond",
  url: "https://www.instagram.com/expertvagabond/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )
counter += 1
Channel.create!(
  name: "bucketlistjourney",
  url: "https://www.instagram.com/bucketlistjourney/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

#40

counter += 1
Channel.create!(
  name: "jamieoliver",
  url: "https://www.instagram.com/jamieoliver/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "les petites pestes",
  url: "https://www.instagram.com/lespetitespestes/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "avikoren",
  url: "https://www.instagram.com/avikoren/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "gaelle_vp",
  url: "https://www.instagram.com/gaelle_vp//",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "audreycosty",
  url: "https://www.instagram.com/audreycosty/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )
#50


counter += 1
Channel.create!(
  name: "milkywaysblueyes",
  url: "https://www.instagram.com/milkywaysblueyes/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "bruxellesfood",
  url: "https://www.instagram.com/bruxellesfood/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "bruxelles.foodguide",
  url: "https://www.instagram.com/bruxelles.foodguide/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "bonjourgeorges",
  url: "https://www.instagram.com/bonjourgeorges/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "earthyandy",
  url: "https://www.instagram.com/earthyandy/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

#60

counter += 1
Channel.create!(
  name: "jennaminnie",
  url: "https://www.instagram.com/jennaminnie/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "gaellegd",
  url: "https://www.instagram.com/gaellegd/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "aurelievandaelen",
  url: "https://www.instagram.com/aurelievandaelen/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "talisalo",
  url: "https://www.instagram.com/talisalo/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "vexx",
  url: "https://www.instagram.com/vexx/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

#70


counter += 1
Channel.create!(
  name: "chloekitembo",
  url: "https://www.instagram.com/chloekitembo/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "masoomminawala",
  url: "https://www.instagram.com/masoomminawala/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "nathalievandenberg",
  url: "https://www.instagram.com/nathalievandenberg/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "waystostudy",
  url: "https://www.instagram.com/waystostudy/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "aurelaskandaj",
  url: "https://www.instagram.com/aurelaskandaj/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "tianykirilove",
  url: "https://www.instagram.com/tianykirilove/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "anthonylastella",
  url: "https://www.instagram.com/anthonylastella/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "audmarshmaloo",
  url: "https://www.instagram.com/audmarshmaloo/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "lailazaouiofficiel",
  url: "https://www.instagram.com/lailazaouiofficiel/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "ankatrien",
  url: "https://www.instagram.com/ankatrien/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

  counter += 1
  Channel.create!(
  name: "anknook",
  url: "https://www.instagram.com/anknook/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "queenofjetlags",
  url: "https://www.instagram.com/queenofjetlags/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "polabur",
  url: "https://www.instagram.com/polabur/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "laurenlewiss_",
  url: "https://www.instagram.com/laurenlewiss_/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "shrads",
  url: "https://www.instagram.com/shrads/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

#100

counter += 1
Channel.create!(
  name: "sebastien.nagy",
  url: "https://www.instagram.com/sebastien.nagy/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "lebackpacker",
  url: "https://www.instagram.com/lebackpacker/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "annecatherine_cloclo",
  url: "https://www.instagram.com/annecatherine_cloclo/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "matthiasgeerts",
  url: "https://www.instagram.com/matthiasgeerts/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "dimitrivegasandlikemike",
  url: "https://www.instagram.com/dimitrivegasandlikemike/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

  #110

counter += 1
Channel.create!(
  name: "crisam",
  url: "https://www.instagram.com/crisam/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )
counter += 1
Channel.create!(
  name: "sofievalkiers",
  url: "https://www.instagram.com/sofievalkiers/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "welovebrussels",
  url: "https://www.instagram.com/welovebrussels/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "nathalievandenberg",
  url: "https://www.instagram.com/nathalievandenberg/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "bibleoffashionjulie",
  url: "https://www.instagram.com/bibleoffashionjulie/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )


  #120
counter += 1
Channel.create!(
  name: "noemiehappart",
  url: "https://www.instagram.com/noemiehappart/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "sofievalkiers",
  url: "https://www.instagram.com/sofievalkiers/?utm_source=ig_embed",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "r_babyberry",
  url: "https://www.instagram.com/r_babyberry/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "i_am_aileen",
  url: "https://www.instagram.com/i_am_aileen/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
  name: "thetinynomad",
  url: "https://www.instagram.com/thetinynomad/",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

puts "120 insta channels added"

puts "about tu add youtube channels"
counter += 1
Channel.create!(
 name: "Dimitri Vegas",
 url: 'https://www.youtube.com/channel/UCxmNWF8fQ4miqfGs84dFVrg',
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

puts "add youtube"

counter += 1
Channel.create!(
 name: "Stromae",
 url: "https://youtube.com/channel/UCXF0YCBWewAj3RytJUAivGA",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Iliass TiiwTiiw",
 url: "https://www.youtube.com/channel/UCBOGNP-uP69PV7Ufh7da7Rw",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Vexx",
 url: "https://youtube.com/channel/UC6FrNJRbr-32LUTmYw1nHFw",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Jimmy Labeu",
 url: "https://youtube.com/channel/UC1_1mcW4AwdcDApXLzMge4A",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Luffy",
 url: "https://youtube.com/channel/UC5N5jACt1Si7YPdy-_2AUag",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Gaelle Garcia",
 url: "https://youtube.com/channel/UCI0mw0nNF16fl0hQUD985VA",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "XEETECHCARE",
 url: "https://youtube.com/channel/UCTqMx8l2TtdZ7_1A40qrFiQ",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Math se fait des films",
 url: "https://youtube.com/channel/UChV2oq_a-UZfJF-UiW0u-DQ",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "MojoOnPC",
 url: "https://www.youtube.com/channel/UCd4IkWsJxct7nDYSKrQoMyA",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: " Gregsway",
 url: "https://www.youtube.com/user/Igregish",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
  name: "Guizzi",
  url: "https://www.youtube.com/user/GuiZziMamy",
  gender: gender.sample,
  user: User.find(counter),
  age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "LufyMakes YouUp",
 url: "https://www.youtube.com/user/LufyMakesYouUp",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Lizaddc",
 url: "https://www.youtube.com/channel/UCKmLL2U2sv9Pj0-rSmy-4rg",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Jolien & Jenno",
 url: "https://www.youtube.com/channel/UCLr-Y3M-1Euoz_IJ7GBDBew",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "MILKYWAYSBLUEYES",
 url: "https://www.youtube.com/user/Claairema",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "SaraBeautyCorner",
 url: "https://www.youtube.com/user/SaraBeautyCorner",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Lydia Elise Millen",
 url: "https://www.youtube.com/channel/UCoSjnRDZSFVp88NXE7MenLQ",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Dr Mona Vand",
 url: "https://www.youtube.com/channel/UC0GkEyks1Nnzhsi9bCZTIjA",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "MojoOnPC",
 url: "https://www.youtube.com/channel/UCd4IkWsJxct7nDYSKrQoMyA",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: " GuiHome",
 url: "https://www.youtube.com/channel/UCFNOftdL_3Gb0XJLnGRaY4A",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Lauranne",
 url: "https://www.youtube.com/user/Laurannefdbetises",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Would You React?",
 url: "https://www.youtube.com/user/WouldYouReact",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Sweety",
 url: "https://www.youtube.com/channel/UC9kRKCzANS83hzg9RwJR1wA",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
 name: "Beanie",
 url: "https://www.youtube.com/user/BeaniemillieTvei",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Poppen Atelier / Doll Art Studio",
 url: "https://www.youtube.com/channel/UCcYRw5J5-C8plZoeZ7x2QQw",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "the Luxury Travel Expert",
 url: "https://www.youtube.com/channel/UCYxsXxbjJO1YYa9yQ3lKC8w",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Tofu Lari",
 url: "https://www.youtube.com/channel/UCdtdFi4-MPzIIVnNW6q3y1Q",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Lydia Elise Millen",
 url: "https://www.youtube.com/channel/UCoSjnRDZSFVp88NXE7MenLQ",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "XO, MaCenna",
 url: "https://www.youtube.com/channel/UCXkbaLJq7IxOfR2ITAinsOQ",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Les bonheurs de Camille",
 url: "https://www.youtube.com/channel/UCDdnq6W5_Y3oLUgRWg9Dk2A",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Sananas",
 url: "https://www.youtube.com/channel/UCVoDMXLU_UNpljm83m-Ds4w",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Mossonyi",
 url: "https://www.youtube.com/channel/UC6SMyPtNcSPkFCDe3LIZvmA",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Carly the Prepster",
 url: "https://www.youtube.com/channel/UCJMEcR_fcx72FHojQMHCGMQ",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Sissy MUA",
 url: "https://www.youtube.com/channel/UCEEGyxve4TX6mIv5_dtU6qg",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Justine GALLICE Fitness",
 url: "https://www.youtube.com/channel/UCOYoAJeYFqVoDxFWgScympg",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "SELF",
 url: "https://www.youtube.com/channel/UCGiSCVGNukLqv8hwpKCsQKQ",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Pick Up Limes",
 url: "https://www.youtube.com/channel/UCq2E1mIwUKMWzCA4liA_XGQ",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Tasty",
 url: "https://www.youtube.com/channel/UCJFp8uSYCjXOMnkUyb3CQ3Q",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Rachel Aust ",
 url: "https://www.youtube.com/channel/UCvIaf-RCk5mQiH8rI0rODlg",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "So Yummy ",
 url: "https://www.youtube.com/channel/UCH8NnRkxQg1zX7mHFRPq73g",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Lauranne",
 url: "https://www.youtube.com/user/Laurannefdbetises",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Would You React?",
 url: "https://www.youtube.com/user/WouldYouReact",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Sweety",
 url: "https://www.youtube.com/channel/UC9kRKCzANS83hzg9RwJR1wA",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Beanie",
 url: "https://www.youtube.com/user/BeaniemillieTvei",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Poppen Atelier / Doll Art Studio",
 url: "https://www.youtube.com/channel/UCcYRw5J5-C8plZoeZ7x2QQw",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "the Luxury Travel Expert",
 url: "https://www.youtube.com/channel/UCYxsXxbjJO1YYa9yQ3lKC8w",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Tofu Lari",
 url: "https://www.youtube.com/channel/UCdtdFi4-MPzIIVnNW6q3y1Q",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Lydia Elise Millen",
 url: "https://www.youtube.com/channel/UCoSjnRDZSFVp88NXE7MenLQ",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "XO, MaCenna",
 url: "https://www.youtube.com/channel/UCXkbaLJq7IxOfR2ITAinsOQ",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Les bonheurs de Camille",
 url: "https://www.youtube.com/channel/UCDdnq6W5_Y3oLUgRWg9Dk2A",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Oksy Vlogs",
 url: "https://www.youtube.com/channel/UCnSqDmLEVMP0U86ZMLCpUgQ",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Mossonyi",
 url: "https://www.youtube.com/channel/UC6SMyPtNcSPkFCDe3LIZvmA",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "aTech",
 url: "https://www.youtube.com/channel/UC6WKkNbUgNvnLBKWUIq2f2A",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Tess Christine",
 url: "https://www.youtube.com/channel/UCVsTboAhpnuL6j-tDePvNwQ",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )


counter += 1
Channel.create!(
 name: "Brooklyn Kelly",
 url: "https://www.youtube.com/channel/UCJalnkxs10RgQgkKlJ6Dv0w",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Gracie Piscopo",
 url: "https://www.youtube.com/channel/UCuzBDlps3OUgpcN1ec53Ytw",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Katherine Bond",
 url: "https://www.youtube.com/channel/UC7Jfp_0DhtHi5VIJTWYk3Lg",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Christina Sikalias ",
 url: "https://www.youtube.com/channel/UC6qmeRZpJqElxLLe7h3ps-A",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Rule'm Sports",
 url: "https://www.youtube.com/user/rulemsports",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Restofriends",
 url: "https://www.youtube.com/channel/UCkfZ711DnS2uG5s6J56drUw",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
 name: "Apartment Therapy",
 url: "https://www.youtube.com/channel/UCY04Nk2nZkUkT4hqf_7suZA",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "TECH & GAMES",
 url: "https://www.youtube.com/channel/UCWCyRhEQBKzgSXIYmDJFo1A",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Exploring Alternatives",
 url: "https://www.youtube.com/channel/UC8EQAfueDGNeqb1ALm0LjHA",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "naynaflorence",
 url: "https://www.youtube.com/channel/UClH3eUwzfDTXxUjM8WIJuOg",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Reese Regan",
 url: "https://www.youtube.com/channel/UCzfnbpkuURTJ614T7_iqrUg",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
 name: "Hana Grace",
 url: "https://www.youtube.com/channel/UCfHt_x-SBmv_Z91OFi77oIA",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "The Good Christian Music Blog",
 url: "https://www.youtube.com/user/TheGCMblog",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Vegains",
 url: "https://www.youtube.com/channel/UCtCMLIERpE97NUqGFyv-e-g",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Martin Latulippe CSP",
 url: "https://www.youtube.com/channel/UCOiRczaqUjuf26_fh03y8wg",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Cyprien",
 url: "https://www.youtube.com/channel/UCyWqModMQlbIo8274Wh_ZsQ",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "MrYayato",
 url: "https://www.youtube.com/channel/UC7yvjtAFkyS5GD_GvrZaUuw",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "HowardFreeman Motivation",
 url: "https://www.youtube.com/channel/UCJFoMrK06Be-kFaQAo52dmQ",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )


counter += 1
Channel.create!(
 name: "Ela Gale",
 url: "https://www.youtube.com/channel/UCx5sF9bDgblmKvdrch1Qs3Q",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "WhatsUpMoms",
 url: "https://www.youtube.com/channel/UCMfXv2enRXepxG92VoxfrEg",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Be Creative ",
 url: "https://www.youtube.com/channel/UCk-KURTfguuNATLwmgIk5AQ",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
 name: "Sarahs Day",
 url: "https://www.youtube.com/channel/UCAHufvd02viJSRdt3ojdPOg",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Video Game News",
 url: "https://www.youtube.com/channel/UCitsvZeConV2Im24BVFH8hg",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Aylin Melisa ",
 url: "https://www.youtube.com/channel/UCfE1PRxKe-5rF2Oezzw2tRA",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Les astuces de Margaux",
 url: "https://www.youtube.com/channel/UCrMqPFdVmx-F5LUMPIOIbGg",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Restofriends",
 url: "https://www.youtube.com/channel/UCkfZ711DnS2uG5s6J56drUw",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Apartment Therapy",
 url: "https://www.youtube.com/channel/UCY04Nk2nZkUkT4hqf_7suZA",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "TECH & GAMES",
 url: "https://www.youtube.com/channel/UCWCyRhEQBKzgSXIYmDJFo1A",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Exploring Alternatives",
 url: "https://www.youtube.com/channel/UC8EQAfueDGNeqb1ALm0LjHA",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "naynaflorence",
 url: "https://www.youtube.com/channel/UClH3eUwzfDTXxUjM8WIJuOg",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Reese Regan",
 url: "https://www.youtube.com/channel/UCzfnbpkuURTJ614T7_iqrUg",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
 name: "Hana Grace",
 url: "https://www.youtube.com/channel/UCfHt_x-SBmv_Z91OFi77oIA",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "The Good Christian Music Blog",
 url: "https://www.youtube.com/user/TheGCMblog",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Vegains",
 url: "https://www.youtube.com/channel/UCtCMLIERpE97NUqGFyv-e-g",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Martin Latulippe CSP",
 url: "https://www.youtube.com/channel/UCOiRczaqUjuf26_fh03y8wg",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Alice Esmeralda",
 url: "https://www.youtube.com/channel/UCu_VvYBtSDJ6xExUoeu3KUg",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )


counter += 1
Channel.create!(
 name: "natamelie",
 url: "https://www.youtube.com/channel/UCvc3ylLM8L84xDALWbqRXLg",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Clem Around The Corner",
 url: "https://www.youtube.com/channel/UCtntESDFRbHq3aAl4gxj1gA",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "ELLE",
 url: "https://www.youtube.com/user/ELLEfr",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Pretty Harmony",
 url: "https://www.youtube.com/channel/UCEZCAjV6ChfIi9Ch164pfRg",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Elodie Romy",
 url: "https://www.youtube.com/user/lsdcompany",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
interests: Interest.all.sample(3)
)


counter += 1
Channel.create!(
 name: "Sarahs Day",
 url: "https://www.youtube.com/channel/UCAHufvd02viJSRdt3ojdPOg",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Visite Déco",
 url: "https://www.youtube.com/channel/UCNIR5CGm3ooKqXnTIP42dUQ",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Justine Porcelaine",
 url: "https://www.youtube.com/user/BeautybyJustine1",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "caroline munoz",
 url: "https://www.youtube.com/channel/UCrMqPFdVmx-F5LUMPIOIbGg",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "CréativeAddict",
 url: "https://www.youtube.com/channel/UC75kORXik7YF8Rv_4sMfELA",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "thatoneartist",
 url: "https://www.youtube.com/channel/UCTbKykrnxSe1YAH5lawVx9w",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )
counter += 1
Channel.create!(
 name: "daphneinthetrees",
 url: "https://www.youtube.com/channel/UCSpEElzCMiLf6M2y2vWmV5Q",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )
counter += 1
Channel.create!(
 name: "furrylittlepeach",
 url: "https://www.youtube.com/user/WeAreLittlePeaches",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Lachri Fine Art",
 url: "https://www.youtube.com/user/Lachri",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )


counter += 1
Channel.create!(
 name: "Caro Arevalo",
 url: "https://www.youtube.com/channel/UCDqEjeSGabg4Ie9U1-5UUfQ",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
 name: "Barbara Crane",
 url: "https://www.youtube.com/user/annuxiys",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Dooms",
 url: "https://www.youtube.com/channel/UCM5_vkhZbNgKnvy6f_lvxcA",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Marine LB",
 url: "https://www.youtube.com/channel/UCpeLQhRiHb3DiAFVyAQummw",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "BASTIEN TATTOO",
 url: "https://www.youtube.com/channel/UCZeUFeRN7v3jwDwJyG-empA",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )


counter += 1
Channel.create!(
 name: "jenesuispasjolie",
 url: "https://www.youtube.com/user/jenesuispasjolie",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Waldorado",
 url: "https://www.youtube.com/channel/UCc0fmZXlLXpgDZSJgdWJkcg",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Chloe Morello",
 url: "https://www.youtube.com/user/ChloeMorello",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Magali Bertin - Beauté Blog",
 url: "https://www.youtube.com/user/beauteblog",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )


counter += 1
Channel.create!(
 name: "Aufeminin",
 url: "https://www.youtube.com/user/aufemininTV",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Hayley Paige Johnson",
 url: "https://www.youtube.com/user/darlingdetails",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
 name: "Leblogdeneroli",
 url: "https://www.youtube.com/user/Leblogdeneroli",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "THE WORLD OF SISTERS",
 url: "https://www.youtube.com/user/TheWorldOfSisters",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Journal d'une maman",
 url: "https://www.youtube.com/channel/UCRvV-spLcscXZpAfXfp2XoQ",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Anne Dubndidu",
 url: "https://www.youtube.com/channel/UCtqVw7GquAQ4TXY-C_S187A",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Burstimo",
 url: "https://www.youtube.com/channel/UCexjApxCp3sCEHZu4M33iOg",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Waldorado",
 url: "https://www.youtube.com/channel/UCc0fmZXlLXpgDZSJgdWJkcg",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Ditto Music",
 url: "https://www.youtube.com/user/DittoMusic",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Create and Go",
 url: "https://www.youtube.com/channel/UCOkrld1FHoM_VMMjaeMekug",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "CRG Gameroom",
 url: "https://www.youtube.com/channel/UCMYBks_TMHiwB5AdeXSga9A",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Brittney Brombacher",
 url: "https://www.youtube.com/user/Britt5091",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
 name: "Stoked for Saturday",
 url: "https://www.youtube.com/user/Posteman8",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Yasmyn Switzer",
 url: "https://www.youtube.com/channel/UCzMlRftLTe73OAGJdjnRP9Q",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "But First, Coffee",
 url: "https://www.youtube.com/user/butfirstcoffeeblog",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "MojoTravels",
 url: "https://www.youtube.com/user/WatchMojoTravel",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "André Dubois",
 url: "https://www.youtube.com/channel/UCtznbzdsEtz8vodNp2yc8Qg",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )
counter += 1
Channel.create!(
 name: "Start Starting Up",
 url: "https://www.youtube.com/channel/UCm9SCEqwQwPc8_nMHbkuy7Q",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )
counter += 1
Channel.create!(
 name: "Chriselle Lim",
 url: "https://www.youtube.com/user/chrisellelim",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )
counter += 1
Channel.create!(
 name: "Brooke Saward",
 url: "https://www.youtube.com/user/brookehaute",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )
counter += 1
Channel.create!(
 name: "Max & Lee",
 url: "https://www.youtube.com/channel/UCLkUBpw-hgIoHtI5owanaBA",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "MissMikaylaG",
 url: "https://www.youtube.com/user/MissMikaylaG",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
 name: "ashtonbirdie",
 url: "https://www.youtube.com/channel/UCRUhJlurBdyGwVyyaAdwS9w",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

counter += 1
Channel.create!(
 name: "Ableton",
 url: "https://www.youtube.com/user/AbletonInc",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
  interests: Interest.all.sample(3)
  )

counter += 1
Channel.create!(
 name: "Céline Geneviève",
 url: "https://www.youtube.com/user/celinetoupinisee",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )
counter += 1
Channel.create!(
 name: "Native Instruments",
 url: "https://www.youtube.com/user/NativeInstruments",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
 )

puts "about to add fb channels"

counter += 1
Channel.create!(
 name: "Kassidy Yang Photography",
 url: "https://www.facebook.com/kassidyyangphotography/",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
 name: "Iliobsessed1",
 url: "https://www.facebook.com/iliobsessed1/",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
 name: "Sarah Stribbling Wildlife Art",
 url: "https://www.facebook.com/sarahstribblingwildlifeart/",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
 name: "Kadenyi & Yimbiha",
 url: "hhttps://www.facebook.com/KadenyiAndYimbiha/",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
 name: "Michele Botan",
 url: "https://www.facebook.com/michelebotan/",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
 name: "Marco Cartasegna",
 url: "https://fr-fr.facebook.com/MarcoCartasegnaUfficiale/",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
 name: "iJustine",
 url: "https://www.facebook.com/ijustine/",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
 name: "Perez Hilton",
 url: "https://www.facebook.com/PerezHilton/",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
)

counter += 1
Channel.create!(
 name: "Adventure Girl (Stefanie Michaels)",
 url: "https://www.facebook.com/adventuregirl/",
 gender: gender.sample,
 user: User.find(counter),
 age: Age.all.sample,
 interests: Interest.all.sample(3)
)

puts "10 fb channels added"

#--------------------#

#puts "About to create chatroom"
#ChatRoom.create!(
 #   name: 'Chat'
 # )
#puts "Chatroom created"

#seeds for demoday
puts "seeds demoday"

user = User.create!(
  description: "Temporary Description",
  requests: "All the requests",
  first_name: "Molly",
  last_name: "Thang",
  avatar: "https://scontent-bru2-1.xx.fbcdn.net/v/t1.0-9/21369308_1505850619493184_3867962851779440177_n.jpg?_nc_cat=106&_nc_oc=AQlGMfzqd2KM8fM5SAQlcbD6QR3BF4FE2k5yx3gRt9AYm-GrIat_QJhBfzBDccWxTqE&_nc_ht=scontent-bru2-1.xx&oh=ac2bd59d8bcd3e2acf048a4ddce49ec0&oe=5E3F068E",
  email:"balek@hotmail.com",
  password: "sponsop"
 )

age = Age.create!( less_12: false, age_12_18: false, age_19_25: true, age_26_35: true, age_36_45: true, age_46_55: false, age_56_65: false, more_65: false )


channel = Channel.new(
 name: "EatMoveRest",
 url: "https://www.youtube.com/channel/UCPU-z_1fyruAf4OIeKM8FZA",
 gender: "Both",
 user: user,
 age: age
)
channel.save

channel = Channel.new(
 name: "fashionveggie",
 url: "https://www.instagram.com/fashionveggie/",
 gender: "Both",
 user: user,
 age: age
)
channel.save


channel = Channel.new(
 name: "fashionveggie",
 url: "https://www.facebook.com/fashionveggie/",
 gender: "Both",
 user: user,
 age: age,
)

channel.save
puts "demoday added"
