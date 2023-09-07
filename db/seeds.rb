puts "Deleting previous records"

Post.destroy_all
Event.destroy_all
UserTask.destroy_all
Task.destroy_all
User.destroy_all
Comment.destroy_all
Like.destroy_all
Chatroom.destroy_all

puts "Creating 10 users😊"
require "open-uri"

file1 = URI.open("https://avatars.githubusercontent.com/u/138310166?v=4")
user1 = User.new(first_name: "Olivia", last_name: "Feldman", username: "olivia", email: "olivia@gmail.com", password: "123456", country: "US", bio:
  "Hello, I'm Olivia, a twenty-something American who recently made the move to Germany to explore its culture, cuisine, and picturesque landscapes while documenting my adventures through photography and embracing this exciting new chapter. 🇩🇪📸🌍");
user1.photo.attach(io: file1, filename: "user1", content_type: "image/jpeg")
user1.save

file2 = URI.open("https://media.licdn.com/dms/image/D4E03AQHvedzoC6MxMQ/profile-displayphoto-shrink_400_400/0/1690661054695?e=1699488000&v=beta&t=8MQ0exlLfSf_LE-YT_2YSLlPMuJEHq_xkBJmUn6coB8")
user2 = User.new(first_name: "Romeo", last_name: "Alonso", username: "romeo", email: "romeo@gmail.com", password: "123456", country: "ES", bio: "Hey, I'm Romeo, a Spain adventurer who's just taken the leap to start a new chapter in Germany, where I'm immersing myself in the rich culture, savoring schnitzels, and navigating the picturesque landscapes while embracing the thrill of this exciting international journey. 🇧🇷🇩🇪🌍")
user2.photo.attach(io: file2, filename: "user2", content_type: "image/jpeg")
user2.save

file3 = URI.open("https://avatars.githubusercontent.com/u/105309781?v=4")
user3 = User.new(first_name: "Brunna", last_name: "Monteiro", username: "Brunna", email: "brunna@gmail.com", password: "123456", country: "BR", bio: "Hello, I'm Brunna, a Brazilian explorer now calling Germany home, where I'm savoring the hearty cuisine, embracing the language, and creating unforgettable memories in the heart of Europe. 🇨🇦🇩🇪🌍")
user3.photo.attach(io: file3, filename: "user3", content_type: "image/jpeg")
user3.save

file4 = URI.open("https://avatars.githubusercontent.com/u/119588118?v=4")
user4 = User.new(first_name: "Iyayi", last_name: "Roland", username: "iyayi", email: "iyayi@gmail.com", password: "123456", country: "NG", bio: "G'day, I'm Iyayi, an Nigerian adventurer who's swapped the beaches of Nigeria for the charming streets of Germany, where I'm learning the language, savoring the local brews, and embarking on a European odyssey. 🇦🇺🇩🇪🌍")

user4.photo.attach(io: file4, filename: "user4", content_type: "image/jpeg")
user4.save

file5 = URI.open("https://avatars.githubusercontent.com/u/83554926?v=4")
user5 = User.new(first_name: "Sebastián", last_name: "Pont Vergés", username: "Sebbi", email: "sebbi@gmail.com", password: "123456", country: "AR", bio: "I'm Sebbi, a 45 year-old from Argentina now calling Germany home, where I'm embracing the culture, sampling hearty sausages, and discovering the beauty of the Rhine Valley. 🇮🇳🇩🇪🌍")
user5.photo.attach(io: file5, filename: "user5", content_type: "image/jpeg")
user5.save

file6 = URI.open("https://avatars.githubusercontent.com/u/126511743?v=4")
user6 = User.new(first_name: "Farah", last_name: "Boughalem", username: "farah", email: "farah@gmail.com", password: "123456", country: "DZ", bio: "I'm Farah, an 19 year-old Algerian woman who's ventured to Germany to immerse myself in the diverse culture, relish the delicious pastries, and embark on a European adventure. 🇩🇿🇩🇪🌍")
user6.photo.attach(io: file6, filename: "user6", content_type: "image/jpeg")
user6.save

file7 = URI.open("https://ca.slack-edge.com/T02NE0241-U05FXRK4PMX-6ab1746472f8-512")
user7 = User.new(first_name: "Nadja", last_name: "Rünzel", username: "nadja", email: "nadja@gmail.com", password: "123456", country: "SE", bio: "Hey there, I'm Nadja, a berlin-based lawyer with a desire to create my own startup at one point in life. Driven by a passion to widen my horizon, I embark on a coding odyssey.")
user7.photo.attach(io: file7, filename: "user7", content_type: "image/png")
user7.save

file8 = URI.open("https://avatars.githubusercontent.com/u/95176201?v=4")
user8 = User.create(first_name: "Sorina", last_name: "Tudor", username: "sorina", email: "sorina@gmail.com", password: "123456", country: "RO", bio: "My name is Sorina Tudor, I am a 29 years old Romanian woman, I have worked as a hairdresser since I came to Berlin 7 years ago and I speak English Italian and Romanian, occasionally also German.")
user8.photo.attach(io: file8, filename: "user8", content_type: "image/jpeg")
user8.save

file9 = URI.open("https://avatars.githubusercontent.com/u/138442954?v=4")
user9 = User.create(first_name: "Zuzanna", last_name: "Dobak", username: "zuzanna", email: "zuzanna@gmail.com", password: "123456", country: "PL", bio: "More then ten years as HR professional; career transition to web dev: more input and influence for changes in company, stabil environment and income")
user9.photo.attach(io: file9, filename: "user9", content_type: "image/jpeg")
user9.save

file10 = URI.open("https://avatars.githubusercontent.com/u/137560494?v=4")
user10 = User.new(first_name: "Richard", last_name: "Copra", username: "richard", email: "richard@gmail.com", password: "123456", country: "US", bio: "I'm Richard, an american adventurer who's swapped the sunny shores of LA for the charm of Germany, where I'm learning the language, savoring schnitzels, and embracing the European experience.")
user10.photo.attach(io: file10, filename: "user10", content_type: "image/jpeg")
user10.save

users = [user1, user2, user3, user4, user5, user6, user7, user8, user9, user10 ]

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
    content: "If you haven't already secured long-term housing, find temporary accommodation like a hostel or Wunderflats while you search for a more permanent place to live.",
    link: "https://wunderflats.com/en?gclid=CjwKCAjwu_mSBhAYEiwA5BBmf1hv5FIiiM73-_S65sUeJKJiqTXtm3wMgiLK8xik-PKrCaxK1liQ0xoCZNYQAvD_BwE",
  },

  { title: "Register your residence (Anmeldung)",
    content: "To register your apartment in Germany, visit your local registration office with your passport or ID, a completed registration form, and a confirmation of residence from your landlord. Submit your documents, receive a registration certificate, and ensure you update your address with other relevant institutions. ",
    link: "https://www.iamexpat.de/expat-info/german-expat-news/anmeldung-16-tips-getting-address-registered-germany",
  },

  { title: "Select your health insurance",
    content: "To get health insurance in Germany, choose between public (statutory) or private insurance, submit an application with required documents, and pay monthly premiums. Health insurance is mandatory in Germany, and the process may vary based on your choice and circumstances.",
    link: "https://www.make-it-in-germany.com/en/living-in-germany/money-insurance/health-insurance",
  },

  { title: "Open a bank account",
    content: "To open a bank account in Germany, choose a bank, visit the branch, provide your identification (passport or ID, proof of address, and residence permit if needed), complete the required forms, deposit any initial funds if required, and you'll receive your account details upon approval.",
    link: "https://n26.com/en-eu/blog/how-to-open-a-bank-account-in-germany",
  },

  { title: "Apply for a Tax Identification Number",
    content: "The Steueridentifikationsnummer is a number is crucial for taxation and other official processes. To get a tax identification number (TIN) in Germany, you should register at your local tax office (Finanzamt) by completing the relevant forms and providing your personal information, such as your name, address, and nationality. The tax office will then issue you a unique TIN, which is essential for various financial and administrative transactions in Germany.",
    link: "https://www.bzst.de/EN/Private_individuals/Tax_identification_number/tax_identification_number_node.html"
  },

  { title: "Get a public transportation ticket",
    content: "To get a public transportation ticket in Germany, visit a local transport company's ticket office or a ticket vending machine at a train station or bus stop. Select the type of ticket you need, such as a single journey, daily pass, or monthly subscription, and make the payment to receive your ticket, which is often valid for trains, trams, buses, and other forms of public transport in the chosen area.",
    link: "https://www.iamexpat.de/expat-info/transportation/public-transportation-germany-sbahn-ubahn-tram-bus"
  },

  { title: "Apply for a residency permit (if applicable)",
    content: "To obtain a residency permit in Germany, you typically need to apply at the local Foreigners' Registration Office (Ausländerbehörde) in your area. Prepare the required documents, including a valid passport, proof of sufficient financial means, and a lease agreement or confirmation of accommodation, and attend an appointment at the office to complete the application process.",
    link: "https://www.auswaertiges-amt.de/en/visa-service/buergerservice/faq/-/606848"
  },

  { title: "Attend integration courses (if applicable)",
    content: "To enroll in an integration course in Germany, you must visit your local Immigration Office (Ausländerbehörde) or Job Center (Arbeitsagentur) and express your interest in taking the course. If you meet the eligibility criteria, you'll be referred to a language school or course provider, where you can register and start the integration course, which typically includes language and orientation components to help newcomers integrate into German society.",
    link: "https://www.bamf.de/EN/Themen/Integration/ZugewanderteTeilnehmende/Integrationskurse/integrationskurse-node.html"
  },

  { title: "Get a SIM card", content: "To get a SIM card in Germany, visit a mobile network provider's store or an authorized retailer, choose a suitable plan (prepaid or postpaid), and provide your identification (passport or ID). The provider will issue you a SIM card, which you can insert into your phone and activate to start using mobile services.",
  link: "https://www.expatica.com/de/living/household/german-sim-card-244240/",
  },

])


puts "Creating User Tasks"

users.each do |user|
  Task.all.each do |task|
    UserTask.create(user: user, task: task, status: false)
  end
end

puts "Creating Event"

file1 = URI.open("https://mein.toubiz.de/api/v1/media/2458f350-2659-437c-ba90-a763f41ae4fd/preview?format=image/jpeg&width=900")
event1 = Event.create(name: "Christmas Market", address: "Kaiserstraße 56
  60329 Frankfurt am Main", description: "With its sheer size and vast number of visitors,
the Frankfurt Christmas Market is one of the most significant Christmas markets in Germany. Elaborate and creative stand
decorations, the backdrops of the Römerberg and St Paul's Square and the huge Christmas tree combine to also make the
Frankfurt Christmas Market one of the most beautiful in all the land.", date: "27 November 2023", user_id: user1.id)
event1.photo.attach(io: file1, filename: "event1", content_type: "image/jpeg")
event1.save

file2 = URI.open("https://www.mybucketlistevents.com/wp-content/uploads/2017/10/31131135628_071b52d972_k-1024x768.jpg")
event2 = Event.create(name: "Oktoberfest", address: "Theresienwiese, 80336 München", description: "Oktoberfest is the most famous of all traditional German festivals. During the two weeks of Oktoberfest each fall, the entire city dons dirndl and lederhosen and huge crowds join in on the drinking, eating, and merriment on the Wies’n.
More than just drinking (though it obviously takes center stage), the festival grounds are decked out with rides, games, shops, and food stands.",
date: "16 September - 3 October 2023", user_id: user2.id)
event2.photo.attach(io: file2, filename: "event2", content_type: "image/jpg")
event2.save

file3 = URI.open("https://somme.com/wp-content/uploads/2019/07/8b2354_344644473574484493fe6e2647582a5a-mv2.jpg")
event3 = Event.create(name: "Anuga - Food & Beverage Fair 2023", address: " Messepl. 1, 50679 Köln", description: "Anuga is the biggest trade fair and key industry event for Food and Beverage.
It showcases the latest innovations and attracts exhibitors and visitors worldwide, providing a platform for business opportunities and networking.",
date: "07 - 11 October 2023", user_id: user3.id)
event3.photo.attach(io: file3, filename: "event3", content_type: "image/jpg")
event3.save

file4 = URI.open("https://www.mybucketlistevents.com/wp-content/uploads/2017/10/1023457940-reeperbahn-in-hamburg-v084kqcuZoL2GhN9NG.jpg")
event4 = Event.create(name: "Reeperbahn Festival", address: "Spielbudenpl. 27, 20359 Hamburg", description: "Europe’s largest club festival and the German equivalent of SXSW, Reeperbahn is a music festival spread out the beautiful northern port city of Hamburg.
Instead of being held in one dedicated location, the majority of bars, clubs, and music venues throughout the city host upwards of 800 concerts over the course of four days in September. Reeperbahn is where music labels’ newest darlings make their debuts and the next stars are discovered.
Label scouts, indie hopefuls, and underground music fans turn out by the tens of thousands.",
date: "18 September 2023", user_id: user4.id)
event4.photo.attach(io: file4, filename: "event4", content_type: "image/jpg")
event4.save

file5 = URI.open("https://www.visitberlin.de/system/files/styles/visitberlin_content_image_medium_visitberlin_xl_2x/private/image/GettyImages-Halloween%20Clique_DL_PPT_1.jpg.webp?itok=gUnHK3Mv")
event5 = Event.create(name: "Halloween Party Ritter Butzke", address: "Ritterstraße 24-27, 10969 Berlin", description: "Join us for a bewitching night of thrills and chills at our Halloween club night! Expect wicked cocktails, spine-tingling tunes, and costume contests that’ll leave you howling with delight.",
date: "31 October 2023", user_id: user5.id)
event5.photo.attach(io: file5, filename: "event5", content_type: "image/jpg")
event5.save

file6 = URI.open("https://www.signa-werbung.de/fileadmin/_processed_/0/2/csm_messe_unique4_1_bild_1_7af9ab1bd2.jpg")
event6 = Event.create(name: "Unique 4+1 2023", address: "Messe-Allee 1, 04356 Leipzig", description: "The Unique 4+1 trade fair showcases advertising technology, textile finishing, engraving, trophies, and photography.
Exhibits include large format printing, illuminated signs, and professional photography.",
date: "22 - 24 September 2023", user_id: user6.id)
event6.photo.attach(io: file6, filename: "event6", content_type: "image/jpg")
event6.save

file7 = URI.open("https://avatars.githubusercontent.com/u/138656152?v=4")
event7 = Event.create(name: "Yoga Harmony", address: "Waldweg 123, 12487 Berlin", description: "Escape the urban chaos and find inner peace in the heart of Berlin's natural haven. Reserve your spot and embark on a journey of self-discovery and rejuvenation.",
date: "07 - 09 September 2023", user_id: user7.id)
event7.photo.attach(io: file7, filename: "event7", content_type: "image/jpeg")
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
