# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

post1 = Posts.new(content: "Hey everyone! I recently moved to Germany and I'm a bit confused about how the healthcare system works here. Any tips or experiences you can share about accessing medical services as a migrant?", category: "Healthcare", user_id: user1 )

post2 = Posts.new(content: "Guten Tag! Let's share our favorite language learning apps, websites, and classes that have helped us improve our language skills.", category: "Language", user_id: user2 )

post3 = Posts.new(content: "Hallo zusammen! If you're a migrant living in Berlin, which neighborhoods do you find most welcoming and accommodating? Let's discuss the best places to settle in the city.", category: "Housing", user_id: user3)

post4 = Posts.new(content: "Hello everyone! Finding a job in a new country can be tough. Let's share job search strategies, interview experiences, and advice on how to build a successful career in Germany.", category: "Work and Employment", user_id: user4)

post5 = Posts.new(content: "Servus! Frankfurt is a diverse city with plenty of cultural events. Anyone interested in attending or organizing meetups to exchange our unique cultural experiences?", category: "Community", user_id: user5)

post6 = Posts.new(content: "Servus! Frankfurt is a diverse city with plenty of cultural events. Anyone interested in attending or organizing meetups to exchange our unique cultural experiences?", category: "Mental Health", user_id: user6)

post7 = Posts.new(content: "Hey there! Let's discuss the process of obtaining residence permits, work visas, and other legal documents necessary for migrants to stay and work in Germany.", category: "Visas and Residence Permits", user_id: user7)

post8 = Posts.new(content: "Guten Appetit! Food connects us to our roots. Let's talk about our favorite recipes from back home and how we've adapted to cooking with local ingredients here in Germany.", category: "Community", user_id: user8)

post9 = Posts.new(content: "Being a student in a new country can be overwhelming. Let's share tips on finding academic support, making friends, and enjoying student life in Munich.", category: "Student Life", user_id: user9)

post10 = Posts.new(content: "Hey, newcomers! Affordable housing can be a challenge. Share your tips, websites, and resources for finding budget-friendly housing options in Germany.", category: "Housing", user_id: user10)

post11 = Posts.new(content: "Different work cultures can sometimes lead to misunderstandings. Let's discuss how we've navigated cultural differences in the workplace and built positive relationships with colleagues.", category: "Work and Employment", user_id: user1)

post12 = Posts.new(content: "Moin moin! Are you a migrant who started a business in Hamburg? Share your entrepreneurial journey, challenges you've faced, and advice for others looking to do the same.", category: "Work and Employment", user_id: user2)

post13 = Posts.new(content: "Hallo parents! Let's talk about the education options available for our children in Germany. From schools to extracurricular activities, share your insights and experiences.", category: "Parenthood", user_id: user3)

post14 = Posts.new(content: "It's important to be aware of our rights as migrants. Let's discuss organizations in Cologne that provide legal assistance, support, and advocacy for migrants.", category: "Legal Rights", user_id: user4)

post15 = Posts.new(content: "Volunteering is a great way to connect with the local community. Share your experiences, opportunities, and organizations that welcome migrant volunteers in Stuttgart.", category: "Community", user_id: user5)

post16 = Posts.new(content: "Hallo! Making friends in a new place can be daunting. Let's share strategies for meeting people, joining social groups, and building a support network in Essen as migrants.", category: "Community", user_id: user6)

post17 = Posts.new(content: "Hey there! Public transport is a lifeline in Germany. Share your experiences and tips for using buses, trams, trains, and subways effectively as a newcomer.", category: "Travel and Public Transport", user_id: user7)

post18 = Posts.new(content: "Hallo liebe Freunde! Let's discuss the experiences of LGBTQ+ migrants in Germany. Share stories, resources, and support networks that have helped you navigate this aspect of your identity.", category: "Community", user_id: user8)

post19 = Posts.new(content: "Hallo liebe Mitbürger! Aging migrants might face unique challenges. Let's discuss resources, support networks, and healthcare options available for our elder members in Germany.", category: "Healthcare", user_id: user9)

post20 = Posts.new(content: "Moin moin, fitness enthusiasts! How do you stay active in Düsseldorf? Let's talk about sports clubs, fitness centers, and outdoor activities that keep us healthy and connected.", category: "Community", user_id: user10)
