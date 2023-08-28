puts "Deleting previous records"


Post.destroy_all
Event.destroy_all
Task.destroy_all
User.destroy_all


puts "Creating 10 users😊"
require 'faker'

10.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  User.create(
    first_name: first_name,
    last_name: last_name,
    username: (first_name[0] + last_name).downcase + rand(1..99).to_s,
    email: "#{first_name}_#{last_name}@gmail.com",
    password: "123456"
  )
end

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
