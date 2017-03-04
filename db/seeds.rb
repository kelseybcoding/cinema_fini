# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  # movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

###### ACTIVEADMIN ######
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

###### MOVIES ######
# Movie.delete_all
# Movie.create(title: 'Foxy Brown',
#   sumary:
#     %{<p>
#       <em>A voluptuous black woman takes a job as a high-class prostitute in order to get revenge on the mobsters who murdered her boyfriend.
#       </p>},
#   rating: 'R',    
#   run_time: '1hr 34mins')

# Movie.create(title: 'John Wick: Chapter 2',
#   sumary:
#     %{<p>
#       <em>After returning to the criminal underworld to repay a debt, John Wick discovers that a large bounty has been put on his life.
#       </p>},
#   rating: 'R',
#   run_time: '2hr 02mins')

# Movie.create(title: 'Lion',
#   sumary:
#     %{<p>
#       <em>A five-year-old Indian boy gets lost on the streets of Calcutta, thousands of kilometers from home. He survives many challenges before being adopted by a couple in Australia; 25 years later, he sets out to find his lost family.
#       </p>},
#   rating: 'PG13',
#   run_time: '2hr 00mins')

# Movie.create(title: 'Logan',
#   sumary:
#     %{<p>
#       <em>In the near future, a weary Logan cares for an ailing Professor X in a hide out on the Mexican border. But Logan's attempts to hide from the world and his legacy are up-ended when a young mutant arrives, being pursued by dark forces.
#       </p>},
#   rating: 'R',
#   run_time: '2hr 21mins')

# Movie.create(title: 'Moonlight',
#   sumary:
#     %{<p>
#       <em>A timeless story of human self-discovery and connection, Moonlight chronicles the life of a young black man from childhood to adulthood as he struggles to find his place in the world while growing up in a rough neighborhood of Miami.
#       </p>},
#   rating: 'R',
#   run_time: '1hr 50mins')

# Movie.create(title: 'The Lego Batman Movie',
#   sumary:
#     %{<p>
#       <em>Bruce Wayne must not only deal with the criminals of Gotham City, but also the responsibility of raising a boy he adopted.
#       </p>},
#   rating: 'PG',
#   run_time: '1hr 44mins')

###### SCREENS ######
# Screen.delete_all
# Screen.create([
#   { name: 'Theater 1', seat_count: 80 },
#   { name: 'Theater 2', seat_count: 80 },
#   { name: 'Theater 3', seat_count: 100 },
#   { name: 'Theater 4', seat_count: 50 },
#   { name: 'Theater 5', seat_count: 100 },
#   { name: 'Theater 6', seat_count: 100 }
# ])

###### SHOWINGS ######
# Showing.delete_all
# Showing.create([{
#   movie_id: 1, 
#   screen_id: 1, 
#   seats_sold: rand(1..80), 
#   start_time: '11:00PM'},

# { movie_id: 2, 
#   screen_id: 2, 
#   seats_sold: rand(1..80), 
#   start_time: '9:00PM'
# },

# {
#   movie_id: 3, 
#   screen_id: 3, 
#   seats_sold: rand(1..100), 
#   start_time: '7:00PM'
# },

# {
#   movie_id: 4, 
#   screen_id: 4, 
#   seats_sold: rand(1..50), 
#   start_time: '8:00PM'
# },

# {
#   movie_id: 5, 
#   screen_id: 5, 
#   seats_sold: rand(1..100), 
#   start_time: '7:30PM'
# },

# {
#   movie_id: 6, 
#   screen_id: 6, 
#   seats_sold: rand(1..100), 
#   start_time: '2:00PM'
# }
# ])
