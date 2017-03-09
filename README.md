# Cinema Fini App - Code Challenge

## This app requires:

Database: postgresql

source 'https://rubygems.org'
```ruby
ruby ‘2.3.1’
```
```ruby
gem 'rails', '~> 5.0.2'
```

```ruby
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
```
```ruby
gem 'activeadmin', git: 'https://github.com/activeadmin/activeadmin'
```
```ruby
gem 'inherited_resources', git: 'https://github.com/activeadmin/inherited_resources'
```
```ruby
gem 'responsive_active_admin'
```
```ruby
gem 'devise'
```

#Summary:
I did not get as far as I would have liked with this challenge, but I learned A TON. After spending time organizing tasks, use cases, and researching some options for the admin needs of this site, I started to dive in and quickly realized my Rails was more rusty than I has thought (pun intended!). My current freelance development work has been more front-end based and has kept me from keeping my RoR skills alive and growing. I spent a good amount of time initially reviewing and toying around with a test app to get re-acquainted with Rails.

I decided to stop where I was and simply share with you my process leading up to the start of my coding this app and what I have coded so far. I plan to continue with this challenge on my own time as it will be a great way to get some more practice in.

With all of that said, this challenge really drove home the personal realization that where I shine most is in planning, researching, and organizing projects like these. I started by taking the challenge description and breaking it down into requirements of the client interface (theater owner) and the requirements of the theater’s customer interface (i.e. - regular user and admin user).

## Basic MVP Use Cases:
**_MOVIE PATRON_** is the customer of Launchpad’s client, Cinema Fini. They use Cinema Fini’s web app to browse movies and showtimes currently available, see how many seats are available, purchase tickets easily, and receive an emailed confirmation and receipt of their ticket.

**_THEATER OWNER_** uses Cinema Fini’s admin interface to be able to add, edit, or delete movie listings and showtimes, manage seating capacities and auditoriums, in addition to assigning movies to their auditoriums. The owner also needs to be able to conveniently track and review ticket sales stored in the database. For this MVP version that means being able to view all sales and view sales by movie via filtering. In the future, there would most-likely be additional admin features to keep track of user (customer) information, add and manage variations on ticket pricing, such as matinee and regular pricing, and pricing for adults, seniors, and students, etc.

## **BREAKING IT DOWN**

| **WHAT YOU DON'T NEED TO WORRY ABOUT**|
| ------------------------------------- |
| - “Shopping Cart”                     |
| - Credit Card Processor               |
| - User Authentication                 |
-----------------------------------------

| **CLIENT INTERFACE**                                           | **USER INTERFACE** |
| ------------------------------------------------------------   | :-----------------:|
| Ability to manage seating capacities & movies playing          | Can see all movies currently playing along with their show times            |
| Ability to add auditoriums & seating capacities for each       | Cannot purchase tickets if sold out                                         |
| Ability to set which movie is showing in which auditorium      | Can only buy 1 ticket at a time (for now)                                   |
| Ability to keep track of sales                                 | Can checkout via form requiring name, email, CC number, and expiration date |
| Order info saved to database                                   |                                                                             |
------------------------------------------------------------------------------------------------------------------------------------------------

| **FINISHING TOUCHES**|
| ------------------------------------- |
| - Use Bootstrap for responsive requirement as is easiest/fastest to implement for this MVP version                      |
| - Create an immaculate ReadMe file                                                                                      |
| - Submit the challenge by pushing code to Github, and deploying app to Heroku                                           |
---------------------------------------------------------------------------------------------------------------------------

##Building It:
I thought it best to start with the interface for the theater patron. I began doodling wireframe flows and possible schemas that would all me to create the view to show all movies and their showtimes from the database, and then allow me to create the form view to collect purchase information from the user and save that ticket purchase to the DB. 

I installed ActiveAdmin from the beginning and spent a small amount of time going through some tutorials on it, but didn’t deep dive into it. I felt it was more important to get the customer interface working properly, which is why, once I “settled” on a database schema and its associations, I seeded the ‘screens’, ‘movies’, and ‘showtimes’ tables with sample data in order to use when building out the app.





