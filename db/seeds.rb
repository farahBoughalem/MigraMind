puts "Deleting previous records"


Post.destroy_all
Event.destroy_all
Task.destroy_all
User.destroy_all



puts "Creating 10 users😊"
require "open-uri"

file1= URI.open("https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
user1= User.new(first_name: "Elizebeth", last_name: "Johnson", username: "emma_j", email: "emma.johnson@gmsil.com", password: "123456")
user1.photo.attach(io: file1, filename: "user1", content_type: "image/jpeg")
user1.save

file2 = URI.open("https://images.unsplash.com/photo-1566753323558-f4e0952af115?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80")
user2 = User.new(first_name: "Liam", last_name: "Smith", username: "liam_s", email: "liam.smith@gmail.com", password: "123456")
user2.photo.attach(io: file2, filename: "user2", content_type: "image/jpeg")
user2.save

file3 = URI.open("https://media.istockphoto.com/id/1317804578/photo/one-businesswoman-headshot-smiling-at-the-camera.jpg?s=612x612&w=0&k=20&c=EqR2Lffp4tkIYzpqYh8aYIPRr-gmZliRHRxcQC5yylY=")
user3 = User.new(first_name: "Olivia", last_name: "Brown", username: "olivia_b", email: "olivia.brown@gmail.com", password: "123456")
user3.photo.attach(io: file3, filename: "user3", content_type: "image/jpg")
user3.save

file4 = URI.open("https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&w=1000&q=80")
user4 = User.new(first_name: "Noah", last_name: "Williams", username: "noah_w", email: "noah.williams@gmail.com", password: "123456")
user4.photo.attach(io: file4, filename: "user4", content_type: "image/jpeg")
user4.save

file5 = URI.open("https://media.istockphoto.com/id/1338134319/photo/portrait-of-young-indian-businesswoman-or-school-teacher-pose-indoors.jpg?s=612x612&w=0&k=20&c=Dw1nKFtnU_Bfm2I3OPQxBmSKe9NtSzux6bHqa9lVZ7A=")
user5 = User.new(first_name: "Ava", last_name: "Jones", username: "ava_j", email: "ava.jones@gmail.com", password: "123456")
user5.photo.attach(io: file5, filename: "user5", content_type: "image/jpg")
user5.save

file6 = URI.open("https://media.istockphoto.com/id/1154642632/photo/close-up-portrait-of-brunette-woman.jpg?b=1&s=612x612&w=0&k=20&c=7hgSq1L2mpIbpuuw00KELApMpmZfBkZ-RBxn3Qps5zQ=")
user6 = User.new(first_name: "Isabella", last_name: "Davis", username: "isabella_d",email: "isabella.davis@gmail.com", password: "123456")
user6.photo.attach(io: file6, filename: "user6", content_type: "image/jpg")
user6.save

file7 = URI.open("https://st4.depositphotos.com/1006137/19992/i/450/depositphotos_199923460-stock-photo-beautiful-brunette-woman-profile-picture.jpg")
user7 = User.new(first_name: "Sophia", last_name: "Miller", username: "sophia_m", email: "sophia.miller@gmail.com", password: "123456")
user7.photo.attach(io: file7, filename: "user7", content_type: "image/jpg")
user7.save

file8 = URI.open("https://media.istockphoto.com/id/1300512215/photo/headshot-portrait-of-smiling-ethnic-businessman-in-office.jpg?s=612x612&w=0&k=20&c=QjebAlXBgee05B3rcLDAtOaMtmdLjtZ5Yg9IJoiy-VY=")
user8 = User.create(first_name: "Jackson", last_name: "Wilson", username: "jackson_w", email: "jackson.wilson@gmail.com", password: "123456")
user8.photo.attach(io: file8, filename: "user8", content_type: "image/jpg")
user8.save

file9 = URI.open("https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWVuJTIwcHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80")
user9 = User.create(first_name: "Lucas", last_name: "Moore", username: "lucas_m", email: "lucas.moore@gmail.com", password: "123456")
user9.photo.attach(io: file9, filename: "user9", content_type: "image/jpeg")
user9.save

file10 = URI.open("https://media.istockphoto.com/id/1372281808/photo/woman-face-profile-young-girl-portrait-with-smooth-healthy-skin-model-facial-side-view-over.jpg?s=612x612&w=0&k=20&c=0sycwPGkFcwXL75kdHCy52c2jX7r9qJwPXqS4J3PZb8=")
user10 = User.new(first_name: "Mia", last_name: "Taylor", username: "mia_t", email: "mia.taylor@gmail.com", password: "123456")
user10.photo.attach(io: file10, filename: "user10", content_type: "image/jpg")
user10.save

puts "Done too little too late 😈"

puts "Creating posts ✏"

Post.create(content: "Hey everyone! I recently moved to Germany and I'm a bit confused about how the healthcare system works here. Any tips or experiences you can share about accessing medical services as a migrant?", category: "Healthcare", user_id: user1.id )

Post.create(content: "Guten Tag! Let's share our favorite language learning apps, websites, and classes that have helped us improve our language skills.", category: "Language", user_id: user2.id )

Post.create(content: "Hallo zusammen! If you're a migrant living in Berlin, which neighborhoods do you find most welcoming and accommodating? Let's discuss the best places to settle in the city.", category: "Housing", user_id: user3.id)

Post.create(content: "Hello everyone! Finding a job in a new country can be tough. Let's share job search strategies, interview experiences, and advice on how to build a successful career in Germany.", category: "Work and Employment", user_id: user4.id)

Post.create(content: "Servus! Frankfurt is a diverse city with plenty of cultural events. Anyone interested in attending or organizing meetups to exchange our unique cultural experiences?", category: "Community", user_id: user5.id)

Post.create(content: "Homesickness can be challenging, but we can support each other. Share your stories and tips on how you’ve coped with missing home while adjusting to life in Germany.", category: "Mental Health", user_id: user6.id)

Post.create(content: "Hey there! Let's discuss the process of obtaining residence permits, work visas, and other legal documents necessary for migrants to stay and work in Germany.", category: "Visas and Residence Permits", user_id: user7.id)

Post.create(content: "Guten Appetit! Food connects us to our roots. Let's talk about our favorite recipes from back home and how we've adapted to cooking with local ingredients here in Germany.", category: "Community", user_id: user8.id)

Post.create(content: "Being a student in a new country can be overwhelming. Let's share tips on finding academic support, making friends, and enjoying student life in Munich.", category: "Student Life", user_id: user9.id)

Post.create(content: "Hey, newcomers! Affordable housing can be a challenge. Share your tips, websites, and resources for finding budget-friendly housing options in Germany.", category: "Housing", user_id: user10.id)

Post.create(content: "Different work cultures can sometimes lead to misunderstandings. Let's discuss how we've navigated cultural differences in the workplace and built positive relationships with colleagues.", category: "Work and Employment", user_id: user1.id)

Post.create(content: "Moin moin! Are you a migrant who started a business in Hamburg? Share your entrepreneurial journey, challenges you've faced, and advice for others looking to do the same.", category: "Work and Employment", user_id: user2.id)

Post.create(content: "Hallo parents! Let's talk about the education options available for our children in Germany. From schools to extracurricular activities, share your insights and experiences.", category: "Parenthood", user_id: user3.id)

Post.create(content: "It's important to be aware of our rights as migrants. Let's discuss organizations in Cologne that provide legal assistance, support, and advocacy for migrants.", category: "Legal Rights", user_id: user4.id)

Post.create(content: "Volunteering is a great way to connect with the local community. Share your experiences, opportunities, and organizations that welcome migrant volunteers in Stuttgart.", category: "Community", user_id: user5.id)

Post.create(content: "Hallo! Making friends in a new place can be daunting. Let's share strategies for meeting people, joining social groups, and building a support network in Essen as migrants.", category: "Community", user_id: user6.id)

Post.create(content: "Hey there! Public transport is a lifeline in Germany. Share your experiences and tips for using buses, trams, trains, and subways effectively as a newcomer.", category: "Travel and Public Transport", user_id: user7.id)

Post.create(content: "Hallo liebe Freunde! Let's discuss the experiences of LGBTQ+ migrants in Germany. Share stories, resources, and support networks that have helped you navigate this aspect of your identity.", category: "Community", user_id: user8.id)

Post.create(content: "Hallo liebe Mitbürger! Aging migrants might face unique challenges. Let's discuss resources, support networks, and healthcare options available for our elder members in Germany.", category: "Healthcare", user_id: user9.id)

Post.create(content: "Moin moin, fitness enthusiasts! How do you stay active in Düsseldorf? Let's talk about sports clubs, fitness centers, and outdoor activities that keep us healthy and connected.", category: "Community", user_id: user10.id)


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
