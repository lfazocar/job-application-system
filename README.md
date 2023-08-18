# Job Application System

Web platform for a company's job application system.

## Description

This is a web app with a fully functioning user authentication system set up using Devise.

The administrator can publish job positions and mark their availability, while the users can browse and apply for them.

In this application only the administrator can sign up users, and they also have access to a user management section where they can see their user details and to which job positions they have applied, which might be useful for staff-related company decisions in the future. Also, when the admin logs in they instantly see a notification reminding them of new job applications.

Only registered users can access the plaform, unregistered users can only see a static landing home page.

**WARNING!** By default the application comes seeded with an admin and an user account for testing and showcasing purposes. Be sure to remove them before deploying them in a real work environment.

## Views

TODO

## Deploy on Heroku via CLI

* Log in using ```heroku login```
* Create app using ```heroku create```
* Connect to app using ```heroku git:remote -a app_name```
* Upload app using ```git push heroku main```
* Run migrations using ```heroku run rails db:migrate```
* Configure environment variables for Amazon S3 in Heroku's app settings:
    * Access key ID in ```aws_access_key_id```
    * Secret access key in ```aws_secret_access_key```
    * Bucket region in ```aws_bucket_region```
    * Bucket name in ```aws_bucket_name```

## Software used

* [Ruby 3.2.2](https://www.ruby-lang.org/en/)  
* [Rails 7.0.6](https://rubyonrails.org/)  
* [PostgreSQL 14.8](https://www.postgresql.org)  
* [Bootstrap 5.3.1](https://getbootstrap.com/)  

### Gems

* [Annotate 3.2.0](https://github.com/ctran/annotate_models)  
* [Devise 4.9.2](https://github.com/heartcombo/devise)  
* [AWS SDK S3 1.132](https://github.com/aws/aws-sdk-rails)  
* [Faker 3.2](https://github.com/faker-ruby/faker)

## Possible improvements

* Search with [PgSearch](https://github.com/Casecommons/pg_search)  
* Pagination with [Pagy](https://github.com/ddnexus/pagy)  
* Additional tests  
* Active storage validation  
* Image processing for profile pictures  
* Mailer setup  
* More UX details in general
