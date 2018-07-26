# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

10.times do
	pa = Part.create(part_number: Faker::Number.between(1, 10))
	
	10.times do
	a = Assembly.create(name: Faker::Music.key)
	pa.assemblies << a
	a.parts << pa
	end
end

puts "All parts, all assemblies and their relations had been created"

