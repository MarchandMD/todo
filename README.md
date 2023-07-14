# To-Do list

## Usage:

fully deployed at: https://mm-todo-53860c89b6fc.herokuapp.com/

1. `git clone <this repo>`
2. cd into the new `todo` repo
3. `bundle`
4. `bundle exec rspec spec`
5. `rails db:create`
6. `rails s`
7. visit `localhost:3000`

## The requirements:

-   [x] As a user, I want to, add an item to my to do list
-   [x] As a user, I want to, remove an item from my to do list
-   [x] As a user, I want to update an item on my to do list
-   [x] As a user, I want to make an item on my to do list as complete
-   [x] As as user, I want make a previously completed item, not complete, on my to do list

## Approach:

Monolithic CRUD functionality, with testing

## to do:

-   ~~add default status~~

## Possible stretch goals:

-   React or Vite FE
-   ~~Coverage reports~~
-   ~~Documentation/readme for usage~~
-   ~~Searchability~~
-   Select all; de-select all
-   UI improvements
-   Add additional fields to `items`
-   create a second object for User: one-to-many
-   Only index items created today
-   Allow access to previous items by day (or aggregated)

## Refactor opportunities:
- ~~there's a bug somewhere preventing the use of `model:` argument in the `form_with` parameters; troubleshoot inconsistency, either with name of the model, resource, route, etc....~~
