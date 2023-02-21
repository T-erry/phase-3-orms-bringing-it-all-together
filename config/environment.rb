require 'bundler'
Bundler.require
require 'pry'
require_relative '../lib/dog'

DB = { conn: SQLite3::Database.new("db/dogs.db") } 

# song1 = Dog.new(name:"Terry", breed:"Tabby")
# song2 = Dog.new(name:"Frank", breed:"Scotish")
def reset_database
    Dog.drop_table
    Dog.create_table
    
    
    Dog.create(name: "Teddy",    breed: "cockapoo")
    Dog.create(name: "Dave", breed: "poodle")
  end
  
  reset_database

# binding.pry
