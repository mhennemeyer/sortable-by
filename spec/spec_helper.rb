require 'rubygems'
require 'activerecord'
require File.dirname(__FILE__) + "/../lib/sortable_by.rb"

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => ':memory:'
)

ActiveRecord::Migration.create_table :models do |t|
end