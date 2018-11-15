
# README
Building instagram using Rails!

The application hasn't been TDD'ed, but it is my intention to keep working on it. My goal for this weekend challenge was to understand rails better and how the MVC pattern unfolds within rails.I also wanted to practice with CSS and HTML/HAML and I am really happy with the outcome.

## How to use

1. clone this repo
2. move into the folder and run `bundle install`
3. create the databases using `db:create` / migrate the databases using `bin/rails db:migrate`
4. start your server with the command `bin/rails s`
5. visit localhost:3000
6. sign up to your own account

## Current Features

- The application allows users to create a personal account signin/out, created using Devise gem.
- Users can post pictures and a description which was implemented using 'paperclip' gem
- Users can see own pictures and can delete them

## Yet to implement
- Write Tests!
