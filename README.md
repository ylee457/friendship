# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# Development

cd to the project download project folder
cd friendship

Install Ruby
rvm install ruby-2.4.0

Install bundler
/media/sf_pj/friendship$ gem install bundler

Install project gems with bundler
/media/sf_pj/friendship$ bundle install

Create the Database
/media/sf_pj/friendship$ rails db:create

Migrate the Database
/media/sf_pj/friendship$ rails db:migrate

Bring up the rails server. It is running local host by default
/media/sf_pj/friendship$ rails s

Bring up a browser and go to its local URL
http://localhost:3000/
