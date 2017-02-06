# README

# INSTALLLATION
1) I suppose that you have Ruby 2.2+, Rails 5.0.1 and PostgreSQL installed

2) "git clone git@github.com:maximkuzmin/basic-catalog.git"

3) "cd basic-catalog/"

4) copy example files:
  * "cp config/database.yml.example config/database.yml"
  * "cp config/settings.yml.example config/settings.yml"
  and fill them as you like

5) Run "rake db:create db:migrate"

6) Fill your database with examples:
  "rake generate_examples"

7) Start application:
  "rails s"

8) Visit http://localhost:3000/

9) Voila!
