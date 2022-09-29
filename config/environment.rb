require 'bundler'
require 'rubygems'
require 'sinatra'

Bundler.require
#this will allow us to pick a database(sqlite3) and choose what file is gonna be our local database(db/development.sqlite3) 
ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/development.sqlite3"
)

require_all 'app'