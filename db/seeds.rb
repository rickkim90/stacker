# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c_field_list = ["Social media/Communication","Edu Tech","Utility","Fintech","Game",
"E-Commerce","Foodtech","Contents","Healthcare","Ad/Marketing","IoT","Analytics","Sharing Economy"]
c_field_list.each do |field|
  CompanyField.create(
      field: field
  )
end


s_field_list = ["Language","Database","Server","Front-end","Native_App",
"Etc"]
s_field_list.each do |field|
  StackField.create(
      field: field
  )
end


# db_stack.csv test
require 'csv'

CSV.foreach(Rails.root.join('db_stack.csv')) do |row|
  Stack.create(
    name: row[0],
    site_url: row[1],
    short_describe: row[2],
    describe: row[3],
    version: row[4],
    stack_field_id: 2
  )
end

CSV.foreach(Rails.root.join('frontend_stack.csv')) do |row|
  Stack.create(
    name: row[0],
    site_url: row[1],
    short_describe: row[2],
    describe: row[3],
    version: row[4],
    stack_field_id: 4
  )
end

CSV.foreach(Rails.root.join('etc_stack.csv')) do |row|
  Stack.create(
    name: row[0],
    site_url: row[1],
    short_describe: row[2],
    describe: row[3],
    version: row[4],
    stack_field_id: 6
  )
end

CSV.foreach(Rails.root.join('language_stack.csv')) do |row|
  Stack.create(
    name: row[0],
    site_url: row[1],
    short_describe: row[2],
    describe: row[3],
    version: row[4],
    stack_field_id: 1
  )
end
