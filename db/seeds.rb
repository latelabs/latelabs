# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.delete_all
Project.delete_all

u1 = User.create(:user_name => 'Justin',  email: "elofjohnson@gmail.com")
u2 = User.create(:user_name => 'Nathan',  email: "nathantross@gmail.com")

p1 = Project.create(:title => 'Hello World', explanation: "this is our first seed project, its going to change the world", :code_repository_link => 'http://github.com/elof')
p2 = Project.create(:title => 'Hello Planet', explanation: "this is our second seed project, its going to change the world", :code_repository_link => 'http://github.com/elof')
p3 = Project.create(:title => 'Hello Universe', explanation: "this is our third seed project, its going to change the world", :code_repository_link => 'http://github.com/nathantross')

# m1 = Comment.create(:name => 'My fav cook book', body: "This is the most useful book ever")

u1.projects =[p1, p2]
u2.projects = [p3]
