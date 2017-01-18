##Tech Spec:
  - RESTful JSON Service
  - Store and Retrieve events
  - Use Ruby on Rails 4+
  - Push to GitHub
  - Include README
    - How to initialize the project
    - Run the provided tests
    - Working examples of each Use Case
  - Provide Minitest examples for all use cases
  - Must have multiple Organizations
  - Must Create and Read Organizations
  - Must Create and Read Events
  - Endpoints are directed to Organizations
  - Must not expose any pages
  - All end points should show the newest elements first

##Data Structure:
###Organizations:
   - id
   - name
   - created_at
    - updated_at

  ###Events:
    - id
    - organization_id
    - message
    - hostname
    - timestamp
    - created_at
    - updated_at

##Endpoints:
  - /organizations
  - /organizations/:name
  - /organizations/:name/events
  - /events

##Use Cases:
  - Create a new Organization
  - List all Organizations
  - Delete an Organization (along with all its Events)
  - Create a new Event
  - List all Events for all Organizations
  - List all Events for an Organization
  - List the last N Events for an Organization
  - List the last N Events for a specific hostname within a specific Organization

##Assumptions: 
  - Rails 4+ includes Rails 5
  - Events alsways belong to Organizations
  - Event timestamp should be different from its created_at and updated_at for some reason
  - Neither Organizations nor Events can be updated or edited
  - Error handling is not needed for this application
