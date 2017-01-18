# README

## Environment Setup

- Ruby version
  2.2+

- Rails version
  5+

- System dependencies
  - Mysql and build depencies

- Configuration
  - Copy the config/database.example.yml to config/database.yml
    - Use the example as a template to set up your database

  - Copy the config/secrets.example.yml to config/secrets.yml
    - Generate a secret key using `rake secret` for both development and test

 - Run `bundle install` to ensure you have all the needed gems

- Database creation
  - `rake db:create`
  - `rake db:migrate`

* Database initialization
  - To see example date run `rake db:fixtures:load`

* Run the Application
 - Run `rails s` and your server will be running at http://localhost:3000

* How to run the test suite
   - To run all the tests run `rake`

## Use Case Examples

### Create a new Organization
  post {organization: {name: <org name> }} to /organizations

### List all Organizations
  get /organizations to see all the organizations

### Delete an Organization (along with all its Events)
  delete {organization: {name: <org name> }} to /organizations to destroy an organization

### Create a new Event
  post {event: {message: <message>, hostname: <hostname>, timestamp: <timestamp> }} to /organizations/:organization_name/events

### List all Events for all Organizations
  get /events to see all events

### List all Events for an Organization
  get /organizations/:organization_name/events to see all the organizations events

### List the last N Events for an Organization
  get /organizations/:organization_name/events?limit=<limit> to see all the organizations events with a limit

### List the last N Events for a specific hostname within a specific Organization
  get /organizations/:organization_name/events?limit=<limit>&hostname=<hostname> to see all the organizations events with a limit, and filtered by hostname
