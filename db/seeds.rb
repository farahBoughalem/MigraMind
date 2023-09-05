puts "Deleting previous records"


Post.destroy_all
Event.destroy_all
UserTask.destroy_all
Task.destroy_all
User.destroy_all
Comment.destroy_all


puts "Creating 10 users😊"
require "open-uri"

file1 = URI.open("https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
user1 = User.new(first_name: "Elizebeth", last_name: "Johnson", username: "emma_j", email: "emma.johnson@gmsil.com", password: "123456", country: "US")
user1.photo.attach(io: file1, filename: "user1", content_type: "image/jpeg")
user1.save

file2 = URI.open("https://images.unsplash.com/photo-1566753323558-f4e0952af115?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80")
user2 = User.new(first_name: "Liam", last_name: "Smith", username: "liam_s", email: "liam.smith@gmail.com", password: "123456", country: "BR")
user2.photo.attach(io: file2, filename: "user2", content_type: "image/jpeg")
user2.save

file3 = URI.open("https://media.istockphoto.com/id/1317804578/photo/one-businesswoman-headshot-smiling-at-the-camera.jpg?s=612x612&w=0&k=20&c=EqR2Lffp4tkIYzpqYh8aYIPRr-gmZliRHRxcQC5yylY=")
user3 = User.new(first_name: "Olivia", last_name: "Brown", username: "olivia_b", email: "olivia.brown@gmail.com", password: "123456", country: "CA")
user3.photo.attach(io: file3, filename: "user3", content_type: "image/jpg")
user3.save

file4 = URI.open("https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&w=1000&q=80")
user4 = User.new(first_name: "Noah", last_name: "Williams", username: "noah_w", email: "noah.williams@gmail.com", password: "123456", country: "AU")
user4.photo.attach(io: file4, filename: "user4", content_type: "image/jpeg")
user4.save

file5 = URI.open("https://media.istockphoto.com/id/1338134319/photo/portrait-of-young-indian-businesswoman-or-school-teacher-pose-indoors.jpg?s=612x612&w=0&k=20&c=Dw1nKFtnU_Bfm2I3OPQxBmSKe9NtSzux6bHqa9lVZ7A=")
user5 = User.new(first_name: "Ava", last_name: "Jones", username: "ava_j", email: "ava.jones@gmail.com", password: "123456", country: "IN")
user5.photo.attach(io: file5, filename: "user5", content_type: "image/jpg")
user5.save

file6 = URI.open("https://media.istockphoto.com/id/1154642632/photo/close-up-portrait-of-brunette-woman.jpg?b=1&s=612x612&w=0&k=20&c=7hgSq1L2mpIbpuuw00KELApMpmZfBkZ-RBxn3Qps5zQ=")
user6 = User.new(first_name: "Isabella", last_name: "Davis", username: "isabella_d",email: "isabella.davis@gmail.com", password: "123456", country: "DZ")
user6.photo.attach(io: file6, filename: "user6", content_type: "image/jpg")
user6.save

file7 = URI.open("https://st4.depositphotos.com/1006137/19992/i/450/depositphotos_199923460-stock-photo-beautiful-brunette-woman-profile-picture.jpg")
user7 = User.new(first_name: "Sophia", last_name: "Miller", username: "sophia_m", email: "sophia.miller@gmail.com", password: "123456", country: "US")
user7.photo.attach(io: file7, filename: "user7", content_type: "image/jpg")
user7.save

file8 = URI.open("https://media.istockphoto.com/id/1300512215/photo/headshot-portrait-of-smiling-ethnic-businessman-in-office.jpg?s=612x612&w=0&k=20&c=QjebAlXBgee05B3rcLDAtOaMtmdLjtZ5Yg9IJoiy-VY=")
user8 = User.create(first_name: "Jackson", last_name: "Wilson", username: "jackson_w", email: "jackson.wilson@gmail.com", password: "123456", country: "PL")
user8.photo.attach(io: file8, filename: "user8", content_type: "image/jpg")
user8.save

file9 = URI.open("https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWVuJTIwcHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80")
user9 = User.create(first_name: "Lucas", last_name: "Moore", username: "lucas_m", email: "lucas.moore@gmail.com", password: "123456", country: "AR")
user9.photo.attach(io: file9, filename: "user9", content_type: "image/jpeg")
user9.save

file10 = URI.open("https://media.istockphoto.com/id/1372281808/photo/woman-face-profile-young-girl-portrait-with-smooth-healthy-skin-model-facial-side-view-over.jpg?s=612x612&w=0&k=20&c=0sycwPGkFcwXL75kdHCy52c2jX7r9qJwPXqS4J3PZb8=")
user10 = User.new(first_name: "Mia", last_name: "Taylor", username: "mia_t", email: "mia.taylor@gmail.com", password: "123456", country: "ES")
user10.photo.attach(io: file10, filename: "user10", content_type: "image/jpg")
user10.save

users = [user1, user2, user3, user4, user5, user6, user7, user8, user9, user10  ]

puts "Done too little too late 😈"

puts "Creating posts ✏"

post1 = Post.create(content: "Hey everyone! I recently moved to Germany and I'm a bit confused about how the healthcare system works here. Any tips or experiences you can share about accessing medical services as a migrant?", category: "Healthcare", user_id: user1.id )

post2 = Post.create(content: "Guten Tag! Let's share our favorite language learning apps, websites, and classes that have helped us improve our language skills.", category: "Language", user_id: user2.id )

post3 = Post.create(content: "Hallo zusammen! If you're a migrant living in Berlin, which neighborhoods do you find most welcoming and accommodating? Let's discuss the best places to settle in the city.", category: "Housing", user_id: user3.id)

post4 = Post.create(content: "Hello everyone! Finding a job in a new country can be tough. Let's share job search strategies, interview experiences, and advice on how to build a successful career in Germany.", category: "Work and Employment", user_id: user4.id)

post5 = Post.create(content: "Servus! Frankfurt is a diverse city with plenty of cultural events. Anyone interested in attending or organizing meetups to exchange our unique cultural experiences?", category: "Community", user_id: user5.id)

post6 = Post.create(content: "Homesickness can be challenging, but we can support each other. Share your stories and tips on how you’ve coped with missing home while adjusting to life in Germany.", category: "Mental Health", user_id: user6.id)

post7 = Post.create(content: "Hey there! Let's discuss the process of obtaining residence permits, work visas, and other legal documents necessary for migrants to stay and work in Germany.", category: "Visas and Residence Permits", user_id: user7.id)

post8 = Post.create(content: "Guten Appetit! Food connects us to our roots. Let's talk about our favorite recipes from back home and how we've adapted to cooking with local ingredients here in Germany.", category: "Community", user_id: user8.id)

post9 = Post.create(content: "Being a student in a new country can be overwhelming. Let's share tips on finding academic support, making friends, and enjoying student life in Munich.", category: "Student Life", user_id: user9.id)

post10 = Post.create(content: "Hey, newcomers! Affordable housing can be a challenge. Share your tips, websites, and resources for finding budget-friendly housing options in Germany.", category: "Housing", user_id: user10.id)

post11 = Post.create(content: "Different work cultures can sometimes lead to misunderstandings. Let's discuss how we've navigated cultural differences in the workplace and built positive relationships with colleagues.", category: "Work and Employment", user_id: user1.id)

post12 = Post.create(content: "Moin moin! Are you a migrant who started a business in Hamburg? Share your entrepreneurial journey, challenges you've faced, and advice for others looking to do the same.", category: "Work and Employment", user_id: user2.id)

post13 = Post.create(content: "Hallo parents! Let's talk about the education options available for our children in Germany. From schools to extracurricular activities, share your insights and experiences.", category: "Parenthood", user_id: user3.id)

post14 = Post.create(content: "It's important to be aware of our rights as migrants. Let's discuss organizations in Cologne that provide legal assistance, support, and advocacy for migrants.", category: "Legal Rights", user_id: user4.id)

post15 = Post.create(content: "Volunteering is a great way to connect with the local community. Share your experiences, opportunities, and organizations that welcome migrant volunteers in Stuttgart.", category: "Community", user_id: user5.id)

post16 = Post.create(content: "Hallo! Making friends in a new place can be daunting. Let's share strategies for meeting people, joining social groups, and building a support network in Essen as migrants.", category: "Community", user_id: user6.id)

post17 = Post.create(content: "Hey there! Public transport is a lifeline in Germany. Share your experiences and tips for using buses, trams, trains, and subways effectively as a newcomer.", category: "Travel and Public Transport", user_id: user7.id)

post18 = Post.create(content: "Hallo liebe Freunde! Let's discuss the experiences of LGBTQ+ migrants in Germany. Share stories, resources, and support networks that have helped you navigate this aspect of your identity.", category: "Community", user_id: user8.id)

post19 = Post.create(content: "Hallo liebe Mitbürger! Aging migrants might face unique challenges. Let's discuss resources, support networks, and healthcare options available for our elder members in Germany.", category: "Healthcare", user_id: user9.id)

post20 = Post.create(content: "Moin moin, fitness enthusiasts! How do you stay active in Düsseldorf? Let's talk about sports clubs, fitness centers, and outdoor activities that keep us healthy and connected.", category: "Community", user_id: user10.id)


puts "Creating Checklist"

Task.create([
  { title: "Find temporary accommodation",
    content: "If you haven't already secured long-term housing, find temporary accommodation like a hostel or Airbnb while you search for a more permanent place to live." },

  { title: "Register your residence (Anmeldung)",
    content: "To register your apartment in Germany, visit your local registration office with your passport or ID, a completed registration form, and a confirmation of residence from your landlord. Submit your documents, receive a registration certificate, and ensure you update your address with other relevant institutions. " },

  { title: "Select your health insurance",
    content: "To get health insurance in Germany, choose between public (statutory) or private insurance, submit an application with required documents, and pay monthly premiums. Health insurance is mandatory in Germany, and the process may vary based on your choice and circumstances." },

  { title: "Open a bank account",
    content: "
    To open a bank account in Germany, choose a bank, visit the branch, provide your identification (passport or ID, proof of address, and residence permit if needed), complete the required forms, deposit any initial funds if required, and you'll receive your account details upon approval." },

  { title: "Apply for a Tax Identification Number",
    content: "The Steueridentifikationsnummer is a number is crucial for taxation and other official processes. To get a tax identification number (TIN) in Germany, you should register at your local tax office (Finanzamt) by completing the relevant forms and providing your personal information, such as your name, address, and nationality. The tax office will then issue you a unique TIN, which is essential for various financial and administrative transactions in Germany." },

  { title: "Get a public transportation ticket",
    content: "To get a public transportation ticket in Germany, visit a local transport company's ticket office or a ticket vending machine at a train station or bus stop. Select the type of ticket you need, such as a single journey, daily pass, or monthly subscription, and make the payment to receive your ticket, which is often valid for trains, trams, buses, and other forms of public transport in the chosen area." },

  { title: "Apply for a residency permit (if applicable)",
    content: "To obtain a residency permit in Germany, you typically need to apply at the local Foreigners' Registration Office (Ausländerbehörde) in your area. Prepare the required documents, including a valid passport, proof of sufficient financial means, and a lease agreement or confirmation of accommodation, and attend an appointment at the office to complete the application process." },

  { title: "Attend integration courses (if applicable)",
    content: "To enroll in an integration course in Germany, you must visit your local Immigration Office (Ausländerbehörde) or Job Center (Arbeitsagentur) and express your interest in taking the course. If you meet the eligibility criteria, you'll be referred to a language school or course provider, where you can register and start the integration course, which typically includes language and orientation components to help newcomers integrate into German society." },

  { title: "Get a SIM card", content: "To get a SIM card in Germany, visit a mobile network provider's store or an authorized retailer, choose a suitable plan (prepaid or postpaid), and provide your identification (passport or ID). The provider will issue you a SIM card, which you can insert into your phone and activate to start using mobile services." }
])

puts "Creating User Tasks"

users.each do |user|
  Task.all.each do |task|
    UserTask.create(user: user, task: task, status: false)
  end
end

puts "Creating Event"

file1 = URI.open("https://mein.toubiz.de/api/v1/media/2458f350-2659-437c-ba90-a763f41ae4fd/preview?format=image/jpeg&width=900")
event1 = Event.create(name: "Frankfurt Christmas Market", address: "Kaiserstraße 56
  60329 Frankfurt am Main", description: "With its sheer size and vast number of visitors,
the Frankfurt Christmas Market is one of the most significant Christmas markets in Germany. Elaborate and creative stand
decorations, the backdrops of the Römerberg and St Paul's Square and the huge Christmas tree combine to also make the
Frankfurt Christmas Market one of the most beautiful in all the land.", date: "27 November 2023", user_id: user1.id)
event1.photo.attach(io: file1, filename: "event1", content_type: "image/jpeg")
event1.save

file2 = URI.open("https://www.sinnesfreunde.de/wp-content/uploads/Sinnesfreunde-projekte-messe-ifa-05.jpg")
event2 = Event.create(name: "IFA Berlin 2023", address: "Messe Berlin, Berlin", description: "As the top trade fair for consumer and home electronics, IFA Berlin draws industry leaders, media, buyers, and dealers from Europe and beyond.
Its international scope and product showcases make it a must-attend event.",
date: "8 September 2023", user_id: user2.id)
event2.photo.attach(io: file2, filename: "event2", content_type: "image/jpg")
event2.save

file3 = URI.open("https://somme.com/wp-content/uploads/2019/07/8b2354_344644473574484493fe6e2647582a5a-mv2.jpg")
event3 = Event.create(name: "Anuga - Food & Beverage Fair 2023", address: " Messepl. 1, 50679 Köln", description: "Anuga is the biggest trade fair and key industry event for Food and Beverage.
It showcases the latest innovations and attracts exhibitors and visitors worldwide, providing a platform for business opportunities and networking.",
date: "07 - 11 October 2023", user_id: user3.id)
event3.photo.attach(io: file3, filename: "event3", content_type: "image/jpg")
event3.save

file4 = URI.open("https://www.textilwirtschaft.de/news/media/23/Shoes-Dsseldorf-225441.jpeg")
event4 = Event.create(name: "Shoes Dusseldorf 2023", address: "Böhlerstraße 1, 40667 Meerbusch Düsseldorf", description: "Shoes Dusseldorf provides a diverse brand portfolio with collection-specific segmentation. It is a meeting place for the industry to network, order and conduct business in a protected setting.
The event also features inspiring side events and international shoe trends.",
date: "27 - 29 December 2023", user_id: user4.id)
event4.photo.attach(io: file4, filename: "event4", content_type: "image/jpeg")
event4.save

file5 = URI.open("https://autovista24.autovistagroup.com/wp-content/uploads/sites/5/2021/09/IAA-MOBILITY-2021-Impressionen-Messehalle-0656-1024x682.jpg")
event5 = Event.create(name: "IAA Mobility 2023", address: "am messeturm 4, 81829 munich", description: "The world's largest and most important mobility event offers manufacturers, suppliers, tech companies,
service providers and startups a wide range of opportunities to present themselves and their services to a broad international B2B and B2C audience.",
date: "05 - 10 Sep 2023", user_id: user5.id)
event5.photo.attach(io: file5, filename: "event5", content_type: "image/jpg")
event5.save

file6 = URI.open("https://www.signa-werbung.de/fileadmin/_processed_/0/2/csm_messe_unique4_1_bild_1_7af9ab1bd2.jpg")
event6 = Event.create(name: "Unique 4+1 2023", address: "Messe-Allee 1, 04356 Leipzig", description: "The Unique 4+1 trade fair showcases advertising technology, textile finishing, engraving, trophies, and photography.
Exhibits include large format printing, illuminated signs, and professional photography.",
date: "22 - 24 September 2023", user_id: user6.id)
event6.photo.attach(io: file6, filename: "event6", content_type: "image/jpg")
event6.save

file7 = URI.open("https://www.meyra.com/typo3temp/_processed_/csm_IMG_5260_03509e6586.jpg")
event7 = Event.create(name: "Rehacare International 2023", address: "Messe Dusseldorf, Düsseldorf", description: "Rehacare is a top international trade fair for rehabilitation, care, prevention, and inclusion.
It serves as a platform for communication and information exchange among people with disabilities, the elderly, and those in need of nursing care.
The fair offers a wide range of products, from mobility aids to barrier-free living concepts and sports equipment.",
date: "13 - 16 September 2023", user_id: user7.id)
event7.photo.attach(io: file7, filename: "event7", content_type: "image/jpg")
event7.save

file8 = URI.open("https://www.big-data.ai/sites/default/files/2023-01/3_BAS.jpg")
event8 = Event.create(name: "Enterprise AI and Machine Learning Summit 2023", address: "Maritim proArte Hotel Berlin, Berlin", description: "The Enterprise AI Summit explicitly addresses concrete use cases for the practical use of artificial intelligence and machine learning.
The use case event brings together more than 100 data scientists,
machine learning experts and AI specialists to exchange views on new technology trends in the areas of applied AI & machine learning, business analytics, ML and deep learning platforms, technical computing, scaling of algorithms, NLP, MLOps etc. and to present current projects, models and methods from practice.",
date: "17 - 19 September 2023", user_id: user8.id)
event8.photo.attach(io: file8, filename: "event8", content_type: "image/jpg")
event8.save

file9 = URI.open("https://www.connecticum.de/fotos/messefotos-62897.jpg")
event9 = Event.create(name: "Connecticum Job Fair 2023", address: "Zehlendorfer Damm 190, 14532 Kleinmachnow", description: "The Connecticum Job Fair allows job seekers to connect with recruiters, employers, and hiring managers, and potentially secure employment with reputable companies and organizations.",
date: "24 - 26 October 2023", user_id: user9.id)
event9.photo.attach(io: file9, filename: "event9", content_type: "image/jpg")
event9.save

file10 = URI.open("https://media.koelnmesse.io/kindundjugend/redaktionell/kind-jugend/img/exhibitor/jiu/jiu_1200x675_t01_1025.jpg")
event10 = Event.create(name: "Kind + Jugend 2023", address: "Messepl. 1, 50679 Köln Cologne", description: "Kind + Jugend is THE international industry event. Leading manufacturers and brands, as well as numerous small and medium-sized specialist suppliers, show a wide range of products for baby and toddler outfitting.
From prams and child seats to home textiles, baby clothing, children's furniture, electronic devices, care and safety products: Kind + Jugend presents diversity and high-quality design and thus sets important impulses and trends for the entire sector.",
date: "07 - 09 September 2023", user_id: user10.id)
event10.photo.attach(io: file10, filename: "event10", content_type: "image/jpg")
event10.save

puts "Creating comments 📖"
Comment.create(post_id: post1.id, user_id: user5.id, content: "Welcome to Germany! Register with a local doctor (Hausarzt) and your insurance should cover most.")
Comment.create(post_id: post2.id, user_id: user7.id, content: "Hi there! Duolingo and Babbel have been game-changers for me.😉")
Comment.create(post_id: post2.id, user_id: user3.id, content: "I've had success with Memrise and taking local VHS courses. Viel Erfolg!")
Comment.create(post_id: post3.id, user_id: user9.id, content: "Hi there! Prenzlauer Berg has a great vibe for migrants like me.🌆")
Comment.create(post_id: post4.id, user_id: user1.id, content: "Networking helped me a lot! Attending meetups and LinkedIn connections. 🌐")
Comment.create(post_id: post4.id, user_id: user3.id, content: "Language skills matter. After improving my German, job prospects expanded")
Comment.create(post_id: post5.id, user_id: user2.id, content: "Absolutely! Let's embrace the diversity and connect through culture. 🌍")
Comment.create(post_id: post7.id, user_id: user5.id, content: "Sure thing! Navigating the paperwork is a challenge, but worth it. 📋")
Comment.create(post_id: post8.id, user_id: user10.id, content: "Love this idea! Mixing traditions with local flavors has been fun. 🍴")
Comment.create(post_id: post9.id, user_id: user2.id, content: "Totally get it! Joining clubs helped me find friends and balance. 🎓")
Comment.create(post_id: post13.id, user_id: user4.id, content: "Hi there! Public schools offer solid education, and activities keep them engaged. 🏫🎒")
