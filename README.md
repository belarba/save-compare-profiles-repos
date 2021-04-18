##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby 2.6.6
- Rails 6.0.3
- PostgreSQL


##### 1. Check out the repository

```bash
git clone git@github.com:belarba/save-compare-profiles-repos.git
```

##### 2. Create and setup the database

Run the following commands to create and setup the database.

```ruby
bundle exec rake db:create
bundle exec rake db:migration
```

##### 3. Start the Rails server

You can start the rails server using the command given below.

```ruby
bundle exec rails s
```

And now you can visit the site with the URL http://localhost:3000
This project is also online on heroku: https://save-compare-profiles.herokuapp.com/
