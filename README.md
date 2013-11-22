# To backup database to a file
pg_dump -Fc --no-acl --no-owner money_go_round_development > kiva_data.dump

# Put the file on S3

# Then run something similar similar to the following command
heroku pgbackups:restore DATABASE 'https://s3.amazonaws.com/me/items/3H0q/kiva_data.dump'


== README

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


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
