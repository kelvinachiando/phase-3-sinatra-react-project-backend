puts "Deleting data..."
Avatar.destroy_all
Avatar.reset_pk_sequence
User.destroy_all
User.reset_pk_sequence
Level.destroy_all
Level.reset_pk_sequence
Question.destroy_all
Question.reset_pk_sequence
Trophy.destroy_all
Trophy.reset_pk_sequence



puts "🌱 Seeding stuff..."

# avatars
goat = Avatar.create(image_url:"https://pbs.twimg.com/media/FPW_3UDX0AQgCcQ.jpg", name:"The Goat", meta:"Christiano Ronaldo - 37years", description:" The GOAT, Christiano Ronaldo is considered to be the greatest footballer of all time")
genius = Avatar.create(image_url:"https://www.sports-king.com/images/nicknames/lionel-messi.jpg", name:"The Genius", meta:"Lionel Messi - 35years", description:" Lionel Messi is considered to be the most genius and skillfull player to ever exist")
destroyer = Avatar.create(image_url:"https://cdn.dribbble.com/users/2073894/screenshots/16459948/media/0beb31c513fe76346a1e77023213c924.jpg?compress=1&resize=400x300", name:"The Destroyer", meta: "Neymar-Jr -30years", description:" Neymar da Silva Santos Júnior, known as Neymar, is a Brazilian professional footballer who plays as a forward for Ligue 1 club Paris Saint-Germain and the Brazil national team.")
stylist = Avatar.create(image_url:"https://w7.pngwing.com/pngs/583/786/png-transparent-paul-pogba-cartoon-juventus-f-c-moustache-face-sport-fashion-thumbnail.png", name:"The Stylista", meta: "Paul Pogba -29years", description:" Paul Labile Pogba is a French professional footballer who plays for Serie A club Juventus and the France national team.")
finisher = Avatar.create(image_url:"https://cdn.futbin.com/content/fifa22/img/players/p168003907.png", name:"The Finisher", meta: "Kylian Mbappe - 23years", description:" Considered one of the best players in the world, and reportedly the highest-paid, Mbappé is renowned for his dribbling abilities, exceptional speed, and finishing.")

# levels

levelOne = Level.create(name:"Level One")
levelTwo = Level.create(name:"Level Two")
levelThree = Level.create(name:"Level Three")
levelFour = Level.create(name:"Level Four")
levelFive = Level.create(name:"Level Five")

# users
# userOne = User.create(name:"The First", avatar_id: wizard.id, level_id: levelOne.id)

# level one questions
questionOne = Question.create(level_id: levelOne.id, question:"What variable cannot be reassigned in javaScript?", answer:"const")
questionTwo = Question.create(level_id: levelOne.id, question:"Which company developed javascript?", answer:"netscape")
questionThree = Question.create(level_id: levelOne.id, question:"What do you mean by NULL in Javascript?", answer:"no value")

# level 2 questions

questionFour = Question.create(level_id: levelTwo.id, question:"What type of scope does a class variable have?", answer:"class")
questionFive = Question.create(level_id: levelTwo.id, question:"What is the correct syntax for a class variable?", answer:"@@variable_name")
questionSix = Question.create(level_id: levelTwo.id, question:"true or false? Private methods can only be called within the context of the defining class. The receiver of a private method is always self.", answer:"true")

# level 3 questions

questionSeven = Question.create(level_id: levelThree.id, question:"true or false? We should update state directly?", answer:"false")
questionEight = Question.create(level_id: levelThree.id, question:"true or false? In JSX, you can identify a class using 'className'?", answer:"true")
questionNine = Question.create(level_id: levelThree.id, question:"Components begin with a ___ letter?", answer:"capital")


# level 4 question
questionTen = Question.create(level_id: levelFour.id, question:"To run a migration, which syntax is used?", answer:"rake db:migrate")
questionEleven = Question.create(level_id: levelFour.id, question:"What do we use to store information that the component itself can change?", answer:"state")
questionTwelve = Question.create(level_id: levelFour.id, question:"What do we use to store information that can only be changed by a different component?", answer:"props")


#level 5 quesitons

questionThirteen = Question.create(level_id: levelFive.id, question:"SQL stands for?", answer:"structured query language")
questionFourteen = Question.create(level_id: levelFive.id, question:"true or false? An object is a bundle of code that defines both data and behaviors", answer:"true")
questionFifteen = Question.create(level_id: levelFive.id, question:"To store data that will be represented as a whole number, which data type is used?", answer:"integer")

# monsters

trophyOne = Trophy.create(name:"KPL Trophy", image_url: "https://soka25east.com/wp-content/uploads/2014/11/kpl-trophy.gif", level_id:levelOne.id, points: 100)
trophyTwo = Trophy.create(name:"EFL Trophy", image_url: "https://www.efl.com/siteassets/image/202021/papa-johns-trophy/pjtrelease.png/Large", level_id:levelTwo.id, points: 500)
trophyThree = Trophy.create(name:"FA Trophy", image_url: "https://whitehawkfc.com/wp-content/uploads/2019/07/emirates-fa-cup-on-stand-on-pitch-773x380.jpg", level_id:levelThree.id, points: 1000)
trophyFour = Trophy.create(name:"Europa Trophy", image_url: "https://idsb.tmgrup.com.tr/ly/uploads/images/2021/02/17/93892.jpg", level_id:levelFour.id, points: 2500)
trophyFive = Trophy.create(name:"Champions League Trophy", image_url: "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt8d3911b7170301c2/60db45a7c5c41538a152a4c3/51ca9346c4a351825ca958cd8eeb70a1c8f356ac.jpg", level_id:levelFive.id, points: 5000)





puts "✅ Done seeding!"
