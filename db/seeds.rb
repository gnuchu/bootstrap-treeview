# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..10).each do |e|
  e = Environment.create!(name: "Environment_#{e}")
  (1..4).each do |number|
    s = Server.create!(name: "Server_#{number}", environment: e)
    asv = Appserver.create!(name: "Appserver_#{number}", server: s)
    app = App.create!(name: "App_#{number}", appserver: asv)
  end
end
