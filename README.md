# What's in my Food

### Versions

Ruby 2.5.3

Rails 5.1.7

### Setup

- Clone this repo
- `bundle install`
- `bundle exec figaro install`
- `rails db:{create,migrate}``
- `rails s`

- [x] Fork and clone this repo and follow the set up instructions: https://github.com/turingschool-examples/whats-in-my-food
We will be querying the FoodData Central API with an ingredient to retrieve a list of the ten most relevant foods that include that ingredient.

- [x] First, sign up for an API key here: https://fdc.nal.usda.gov/api-key-signup.html
The documentation for the API can be found here: https://fdc.nal.usda.gov/api-guide.html
Make sure you take the time to read the documentation carefully. Remember, we want to get a list of foods that contain an ingredient.

- [x] Complete the following user story. 
- [x] Be sure to TDD all of your work. 
- [x] Commit your work every 15 minutes. 
- [x] Start with a big controller, and refactor into the Facade Design Pattern and Service Design Pattern.

:arrow_right: PUSH YOUR CODE TO GITHUB WHEN YOU ARE 100% finished, or 10:50am, whichever is FIRST!! :arrow_left:
DM your repo URL to Dione and I. Do not make a pull request to Turing.

### Story

As a user,
When I visit "/"
  - [x] And I fill in the search form with "sweet potatoes" (Note: Use the existing search form)
  - [x]    And I click "Search"
  - [x]    Then I should be on page "/foods"

In "/foods"
- [x] Then I should see a total of the number of items returned by the search.
- [x] Then I should see a list of ten foods that contain the ingredient "sweet potatoes"
  - [x] And for each of the foods I should see:
  - The food's GTIN/UPC code
  - The food's description
  - The food's Brand Owner
  - The food's ingredients

  ### Refactor to Facade pattern
  - [x] Controller
  - [x] Facade
  - [x] Service
  - [x] Poro
  - [ ] View using objects
