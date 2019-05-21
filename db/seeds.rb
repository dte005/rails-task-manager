# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating tasks for the application"

Task.create(title: "Ir ao mercado", details:"Comprar legumes", completed: false)
Task.create(title: "Fazer a mamadeira", details:"Fazer a mamadeira ao deitar", completed: false)
Task.create(title: "Limpar o banheiro", details:"Limpar o banheiro antes da festa", completed: false)

puts "You have #{Task.count} tasks"
