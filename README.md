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





