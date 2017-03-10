# Cinema Fini App - Code Challenge

## Summary:
I did not get as far as I would have liked with this challenge, but I learned A TON. After spending time organizing tasks, use cases, and researching some options for the admin needs of this app, I started diving into the coding of it and quickly realized my Rails was more rusty than I had thought `pun intended!`. My current freelance development work has been more front-end based and has taken time away from keeping my RoR skills alive and growing. I spent a good amount of time initially reviewing and toying around with a test app to get re-acquainted with Rails.

Since I was past the deadline, I decided to stop where I was and simply share with you my process leading up to the start of my coding this app and what I have coded so far. I plan to continue with this challenge on my own time as it will be a great way to get some more practice in.

With all of that said, this challenge really drove home the personal realization that where I shine most is in planning, researching, and organizing projects like these. I started by taking the challenge description and breaking it down into requirements of the client interface (theater owner) and the requirements of the theater’s customer interface (i.e. - regular user and admin user), and off I went.

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

## ActiveAdmin:
*  [ActiveAdmin Demo Site](http://demo.activeadmin.info/admin)
*  [ActiveAdmin Github](https://github.com/activeadmin/activeadmin)
*  [Responsive ActiveAdmin](https://github.com/ball-hayden/responsive_active_admin)

_When initially exploring ActiveAdmin, I noticed it was not responsive in the least. While using chrome devtools to see how the admin dashboard looked in the various device sizes, I thought it looked like hell, so I googled “making ActiveAdmin responsive” and found a [gem that does just that](https://github.com/ball-hayden/responsive_active_admin)!_

### Other Info:
*  Run rails g active_admin:install to get it going
*  Devise needs to be installed in order to get the generator to run
*  In order to avoid [this error](https://github.com/activeadmin/activeadmin/issues/4679) make sure the ActiveAdmin gem used is the master branch shown above
*  The [inherited_resources gem](https://github.com/activeadmin/inherited_resources) is for added Rails 5 support
*  Active Admin relies heavily on auto-generated code and a pretty massive DSL to customize the admin interface
*  Creates admin user model and uses devise for admin authentication, so regular users are separated out from admin user, keeping it super secure
*  [This GoRails tutorial is a nice basic introduction](https://www.youtube.com/watch?v=NJYtzznKrg0)

## Basic MVP Use Cases:
**_MOVIE PATRON_** is the customer of Launchpad’s client, Cinema Fini. They use Cinema Fini’s web app to browse movies and showtimes currently available, see how many seats are available, purchase tickets easily, and receive an emailed confirmation and receipt of their ticket.

**_THEATER OWNER_** uses Cinema Fini’s admin interface to be able to add, edit, or delete movie listings and showtimes, manage seating capacities and auditoriums, in addition to assigning movies to their auditoriums. The owner also needs to be able to conveniently track and review ticket sales stored in the database. For this MVP version that means being able to view all sales and view sales by movie via filtering. In the future, there would most-likely be additional admin features to keep track of user (customer) information, add and manage variations on ticket pricing, such as matinee and regular pricing, and pricing for adults, seniors, and students, etc.

## **BREAKING IT DOWN**

| **WHAT YOU DON'T NEED TO WORRY ABOUT**|
| ------------------------------------- |
| - “Shopping Cart”                     |
| - Credit Card Processor               |
| - User Authentication                 |

| **CLIENT INTERFACE**                                           | **USER INTERFACE** |
| ------------------------------------------------------------   | :-----------------:|
| Ability to manage seating capacities & movies playing          | Can see all movies currently playing along with their show times            |
| Ability to add auditoriums & seating capacities for each       | Cannot purchase tickets if sold out                                         |
| Ability to set which movie is showing in which auditorium      | Can only buy 1 ticket at a time (for now)                                   |
| Ability to keep track of sales                                 | Can checkout via form requiring name, email, CC number, and expiration date |
| Order info saved to database                                   |                                                                             |

| **FINISHING TOUCHES**|
| ------------------------------------- |
| - Use Bootstrap for responsive requirement as is easiest/fastest to implement for this MVP version                      |
| - Create an immaculate ReadMe file                                                                                      |
| - Submit the challenge by pushing code to Github, and deploying app to Heroku                                           |
---------------------------------------------------------------------------------------------------------------------------

##Building It:
I thought it best to start with the interface for the theater patron. I began doodling wireframe flows and possible schemas that would all me to create the view to show all movies and their showtimes from the database, and then allow me to create the form view to collect purchase information from the user and save that ticket purchase to the DB. 

I installed ActiveAdmin from the beginning and spent a small amount of time going through some tutorials on it, but didn’t deep dive into it. I felt it was more important to get the customer interface working properly, which is why, once I “settled” on a database schema and its associations, I seeded the ‘screens’, ‘movies’, and ‘showtimes’ tables with sample data in order to use when building out the app.

##Where I Left Off:
* ActiveAdmin is installed and can be viewed at /admin, but it is not built for our client’s needs at this time

* I currently have a very basic view of the sample movie data at the root page that shows one showtime (was planning to add more later per each movie) that the user can click and be taken to the purchase ticket form page. 

* Ticket purchase data is not saving to the DB as it should. I was having trouble determining how to have the showtime/movie/screen data save to the ‘ticket_orders’ table along with the user’s name, email, credit card number and expiration date. They all need to be related and saved together as that instance of a ticket order, so the theater owner can access.
  * With that said, I think my associations may be incorrect and/or my controller actions need adjusting.

* Need some sort of counter logic to keep track of tickets sold/remaining seats, so when a ticket is purchased for a movie and it’s corresponding screen, it counts down (maybe number of tickets remaining can display in the view). Could also display “SOLD OUT” on index page for particular movie when no more tickets are available.
  * Possible pseudo-code?
```ruby
If screen_id/movie_id’s seat_count is <= 0
then display “SOLD OUT” in that movie’s listing on index page
Else display number of seats remaining
```

* I need to build the admin side of things. I really think that ActiveAdmin is a lovely polished solution to the needs of the theater owner. However, it would take a little time to learn, and for this MVP, I could have better spent my time using basic CRUD views to allow the theater owner to create and add movies, screens, showtimes, and see index views filtered to show all ticket sales and ticket sales my movie.

* I have not used action-mailer before, so I need to research that and configure in order to email ticket receipt to customer

* Bootstrap is installed, but I had no plans to tackle the responsive styling for the most part until it was actually function properly

* Not pushed to heroku, obviously.


## My Process In A Nutshell:
`We've all been there, right?`
![poorlydrawnlines.com process](http://www.poorlydrawnlines.com/wp-content/uploads/2014/07/process.png)





