puts "Deleting previous records"

Post.destroy_all
Event.destroy_all
Task.destroy_all
User.destroy_all

puts "Done too little too late 😈"















puts "Creating posts ✏"

Post.create(content: "Hey everyone! I recently moved to Germany and I'm a bit confused about how the healthcare system works here. Any tips or experiences you can share about accessing medical services as a migrant?", category: "Healthcare", user_id: 1 )

Post.create(content: "Guten Tag! Let's share our favorite language learning apps, websites, and classes that have helped us improve our language skills.", category: "Language", user_id: 2 )

Post.create(content: "Hallo zusammen! If you're a migrant living in Berlin, which neighborhoods do you find most welcoming and accommodating? Let's discuss the best places to settle in the city.", category: "Housing", user_id: 3)

Post.create(content: "Hello everyone! Finding a job in a new country can be tough. Let's share job search strategies, interview experiences, and advice on how to build a successful career in Germany.", category: "Work and Employment", user_id: 4)

Post.create(content: "Servus! Frankfurt is a diverse city with plenty of cultural events. Anyone interested in attending or organizing meetups to exchange our unique cultural experiences?", category: "Community", user_id: 5)

Post.create(content: "Homesickness can be challenging, but we can support each other. Share your stories and tips on how you’ve coped with missing home while adjusting to life in Germany.", category: "Mental Health", user_id: 6)

Post.create(content: "Hey there! Let's discuss the process of obtaining residence permits, work visas, and other legal documents necessary for migrants to stay and work in Germany.", category: "Visas and Residence Permits", user_id: 7)

Post.create(content: "Guten Appetit! Food connects us to our roots. Let's talk about our favorite recipes from back home and how we've adapted to cooking with local ingredients here in Germany.", category: "Community", user_id: 8)

Post.create(content: "Being a student in a new country can be overwhelming. Let's share tips on finding academic support, making friends, and enjoying student life in Munich.", category: "Student Life", user_id: 9)

Post.create(content: "Hey, newcomers! Affordable housing can be a challenge. Share your tips, websites, and resources for finding budget-friendly housing options in Germany.", category: "Housing", user_id: 10)

Post.create(content: "Different work cultures can sometimes lead to misunderstandings. Let's discuss how we've navigated cultural differences in the workplace and built positive relationships with colleagues.", category: "Work and Employment", user_id: 1)

Post.create(content: "Moin moin! Are you a migrant who started a business in Hamburg? Share your entrepreneurial journey, challenges you've faced, and advice for others looking to do the same.", category: "Work and Employment", user_id: 2)

Post.create(content: "Hallo parents! Let's talk about the education options available for our children in Germany. From schools to extracurricular activities, share your insights and experiences.", category: "Parenthood", user_id: 3)

Post.create(content: "It's important to be aware of our rights as migrants. Let's discuss organizations in Cologne that provide legal assistance, support, and advocacy for migrants.", category: "Legal Rights", user_id: 4)

Post.create(content: "Volunteering is a great way to connect with the local community. Share your experiences, opportunities, and organizations that welcome migrant volunteers in Stuttgart.", category: "Community", user_id: 5)

Post.create(content: "Hallo! Making friends in a new place can be daunting. Let's share strategies for meeting people, joining social groups, and building a support network in Essen as migrants.", category: "Community", user_id: 6)

Post.create(content: "Hey there! Public transport is a lifeline in Germany. Share your experiences and tips for using buses, trams, trains, and subways effectively as a newcomer.", category: "Travel and Public Transport", user_id: 7)

Post.create(content: "Hallo liebe Freunde! Let's discuss the experiences of LGBTQ+ migrants in Germany. Share stories, resources, and support networks that have helped you navigate this aspect of your identity.", category: "Community", user_id: 8)

Post.create(content: "Hallo liebe Mitbürger! Aging migrants might face unique challenges. Let's discuss resources, support networks, and healthcare options available for our elder members in Germany.", category: "Healthcare", user_id: 9)

Post.create(content: "Moin moin, fitness enthusiasts! How do you stay active in Düsseldorf? Let's talk about sports clubs, fitness centers, and outdoor activities that keep us healthy and connected.", category: "Community", user_id: 10)

puts "Creating Checklist"

Task.create([
  { title: "Find Temporary Accommodation",
    content: "If you haven't already secured long-term housing, find temporary accommodation like a hostel or Airbnb while you search for a more permanent place to live." },

  { title: "Register my residence (Anmeldung)",
    content: "How do I register my residence (Anmeldung)?" },

  { title: "Select a health insurance",
    content: "What health insurance options are available for migrants?" },

  { title: "Open a bank account",
    content: "How do I open a bank account?" },

  { title: "Apply for a Tax Identification Number",
    content: "The Steueridentifikationsnummer is a number is crucial for taxation and other official processes." },

  { title: "Explore Public Transportation",
    content: "Familiarize yourself with the local public transportation system. Obtain a transit pass if needed." },

  { title: "Apply for Residency Permit (if applicable)",
    content: "If you are not an EU/EEA citizen, you may need to apply for a residency permit or visa. Research the specific requirements for your situation." },

  { title: "Attend Integration Courses (if applicable)",
    content: " Integration courses can help you learn the language, culture, and society of Germany. If you're required to attend, make sure to enroll." },

  { title: "Get a SIM Card", content: "Obtain a local SIM card for your phone to have access to communication and data services." }
])
