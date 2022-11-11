puts "🌱 Seeding spices..."

#Student data
s1 = Student.create(first_name: "Jose", last_name: "Fletes", age: 33, active: false)
s2 = Student.create(first_name: "Cassandra", last_name: "Fletes", age: 30, active: false)
s3 = Student.create(first_name: "Tahnee", last_name: "Freda", age: 33, active: true)
s4 = Student.create(first_name: "Luis", last_name: "Osorio", age: 24, active: true)
s5 = Student.create(first_name: "Nadia", last_name: "Aponte", age: 23, active: true)

puts "✅ Done seeding!"
