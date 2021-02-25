# Hike It Up
A website to view and rate the best hiking spots around!
This project is built on [Ruby](https://www.ruby-lang.org/) using [Sinatra](http://sinatrarb.com/), [ActiveRecord](https://guides.rubyonrails.org/active_record_basics.html), and utilizing [PostgreSQL](https://www.postgresql.org/) for data storage. *Hike It Up* was built as a portfolio project for the [Flatiron School](https://flatironschool.com/). 

### Quick Links
- [Running The Application](#running-the-application)
- [Architecture](#architecture-information)
- [Contributing](#contributing)
- [Credits](#credits)
- [License](https://github.com/CoachLuck/hike-it-up/tree/main/LICENSE)

## Why?
This was a great way to get used to building out a project using the [MVC](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller) architecture. I wanted to explore the possibilites of using [Sinatra](http://sinatrarb.com/) to build a web application and create object relations between users and something. Taking one of my passions, hiking, and merging it with my new found knowledge I arrived at *Hike It Up*. 

### What I hoped to learn
* How to successfully authenticate a user within a sinatra application using bcrypt
* How to utilize HTML forms along with Sinatra to perform CRUD based operations
* How to build a MVC structured web application

## Running the Application
Preview the production server on heroku [here](https://hike-it-up.herokuapp.com/).

To Run this project locally:
* Clone this project.
* CD into the projects directory.
* Run `bundle install`
* Run `rake db:setup` to initialize your PostgreSQL database
* Start your server with either `puma` or `puma -C config/puma.rb`

## Architecture Information
* [MVP Structure](#most-viable-product-structure)
* [Stretch Features](#stretch-features )

### Most Viable Product Structure
Thinking of the base structure I went ahead and created models for `users`, `trails`, `reviews`, and `trail images`. Although only needed views for my `users` and `trails` models, as the others were children of these models. I ended up creating a personal `reviews` route for logged in users so they can easily manage their reviews.

Thus the structure for our objects looked like:
```ruby

# user
  has_many: :reviews
  has_many: :trails, through: :reviews

# trail
  has_many: :reviews
  has_many: :trail_images
  
  # active record will automatically set this association for us
  # has_many: :users, through: :reviews
  
# review
  belongs_to: :user
  belongs_to: :trail
  
# trail image
  belongs_to: :trail

```

#### What can anyone do?
* View all trails
* View all users

#### What can a user do if they log in?
* Edit their own profile information
* Edit trail information
* Leave a review on a trail

To implement this I created [migrations](https://www.github.com/CoachLuck/hike-it-up/tree/main/db/migrate) using **Rake** to create the associated tables for the models I just created.

### Stretch Features

#### What can anyone do?
- [ ] Allow users to search trails by name
- [ ] Allow users to search for a user by name/username

#### What can a user do if they log in?
- [X] Add an image to a trail
- [X] [Add captions to images](https://www.github.com/CoachLuck/hike-it-up/tree/main/db/migrate/20210222173851_add_captions_to_images.rb)
- [X] Delete/Edit their reviews

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/'coachluck'/hike-it-up. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](https://github.com/CoachLuck/elem_info/blob/main/CODE_OF_CONDUCT.md) code of conduct.

## Credits
* [bcrypt](https://github.com/codahale/bcrypt-ruby) - Open-source password hashing algorithm
* [corneal](https://github.com/thebrianemory/corneal) - Sinatra app generator
* [tux](https://github.com/cldwalker/tux) - Dresses up Sinatra in a shell
