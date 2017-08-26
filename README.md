# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  2.4.1

* System dependencies

* Configuration
  Os X / Ubunto

* Database creation
  rake db:create

* Database initialization
  rake db:seed

* Database migration
  $ heroku run --app maria-1337-1337 rake db:migrate
  $ heroku logs --tail --app maria-1337-1337

* Tasks
  $ heroku run --app maria-1337-1337 rake system_setup:build_defaults
  $ heroku run --app maria-1337-1337 rake page:build_subscription_pages
  $ heroku run --app maria-1337-1337 rake page:build_welcome_pages
  $ heroku run --app maria-1337-1337 rake page:build_front_pages
  $ heroku run --app maria-1337-1337 rake page:build_post_pages

* How to run the test suite
  $ rake

* Services (job queues, cache servers, search engines, etc.)
  $ heroku logs --tail --app maria-1337-1337

* Deployment instructions
  $ git push origin master

* console on production
  $ heroku run rails console --app maria-1337-1337



* Huray ported
