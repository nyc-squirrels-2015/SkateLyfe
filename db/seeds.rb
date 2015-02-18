
User.create(name: "Zenon", username: "Girl of the 21st Century", boardtype: "LongBoard", password: "123", profpic: "http://bit.ly/1CFKjRp")
User.create(name: "Ryan Sheckler", username: "Ryan", boardtype: "orangatang wheels", password: "123", profpic: 'http://bit.ly/17flgt6')
User.create(name: "Paul Rodriguez", username: "P-Rod", boardtype: "RedBull", password: "123", profpic: "http://bit.ly/1A3M2jr")
User.create(name: "Nyjah Huston", username: "Sick-Kid", boardtype: "Element", password: "123", profpic: "http://bit.ly/1vTNPIh")
User.create(name: "Rob Dyrdek", username: "Bobby Lite", boardtype: "DC", password: "123", profpic: "http://bit.ly/1Mv9vQ3")


Skatelog.create(user_id: 1, title: "McCarren Skate Park", seshtime:"30mins", tricks:"kickflip", description:"I mastered the kickflip")
Skatelog.create(user_id: 2, title: "SB StateSt. Sesh", seshtime:"20mins", tricks:"crooked grind", description:"sick sesh")
Skatelog.create(user_id: 2, title: "LA Bowl", seshtime:"40mins", tricks:"railslide", description:"The bowl was super empty today!")
Skatelog.create(user_id: 3, title: "Neighbor's Empty Pool", seshtime:"20mins", tricks:"50-50 grind", description:"I hope they don't come home!")
Skatelog.create(user_id: 4, title: "Competition", seshtime:"20mins", tricks:"nosegrind", description:"Checkout the trick that made me the champ!")