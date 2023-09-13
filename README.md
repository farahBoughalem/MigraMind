# MigraMinds - A Mobile Web App for Migrants in Germany

Welcome to the MigraMinds project! This README provides an overview of our mobile web app for migrants in Germany. Here, you'll find information on the app's functionality, technologies used, and how to set it up locally or deploy it to Heroku.

## Table of Contents
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Getting Started](#getting-started)
- [Deployment](#deployment)
- [Contributing](#contributing)

## Features

### Checklist
- Upon signing up, users gain access to a checklist of tasks they should complete upon their arrival in Germany.
- Users can view task details, find helpful links for more information, and mark tasks as accomplished.

### Posts
- Users can view posts created by other migrants.
- Features include liking, commenting, searching for posts, and creating new posts.

### Events
- Users can browse events created by other users and create their own events.
- Each event includes a description, location with an integrated map, and a list of attendees.

### User Profile
- Users have their own profile page where they can see their upcoming events and events they've joined.
- They can also see the time left for each upcoming event.

### Chat
- Users can engage in real-time chat with other users using Action Cable and WebSocket.

## Technologies Used

MigraMinds is built using the following technologies:

- Ruby on Rails 7.0
- JavaScript ES6
- Stimulus
- Simple Form
- turbo
- Action Cable and WebSocket
- Redis
- HTML
- CSS
- SASS
- Bootstrap
- Geocoding
- Mapbox
- Cloudinary
- Heroku

## Getting Started

To run MigraMinds locally, follow these steps:

1. Clone the repository from GitHub:
```
git clone https://github.com/farahBoughalem/MigraMind.git
```

2. Install Ruby and Rails if you haven't already. You can refer to the official documentation for installation instructions.

3. Install the required gems:
```
bundle install
```

4. create an .env file and add your couldinary and mapbox keys
```
touch .env
```

5. Set up the database:
```
rails db:create db:migrate db:seed
```

6. Start the Rails server:
```
rails s
```

7. Visit `http://localhost:3000` in your web browser to access the app.

## Deployment

You can deploy MigraMinds to Heroku or any other hosting platform of your choice. Make sure to configure your environment variables and set up a production-ready database.

For Heroku deployment, you can use the Heroku CLI:

1. Create a Heroku app:
```
heroku create your-app-name
```

2. Push the code to Heroku:
```
git push heroku master
```

3. Migrate and seed the database on Heroku:
```
heroku run rails db:migrate db:seed
```

4. Open the deployed app in your browser:
```
heroku open
```

## Contributing
We welcome any and all contributions! Here are some ways you can get started:

- Report bugs: If you encounter any bugs, please let us know. Open up an issue and let us know the problem.
- Contribute code: If you are a developer and want to contribute, follow the instructions to get started!
- Suggestions: If you don't want to code but have some awesome ideas, open up an issue explaining some updates or imporvements you would like to see!
- Documentation: If you see the need for some additional documentation, feel free to add some!
