puts "🌱 Seeding spices..."

#Student data
s1 = Student.create(first_name: "Jose", last_name: "Fletes", age: 33, active: false)
s2 = Student.create(first_name: "Cassandra", last_name: "Fletes", age: 30, active: false)
s3 = Student.create(first_name: "Tahnee", last_name: "Freda", age: 33, active: true)
s4 = Student.create(first_name: "Luis", last_name: "Osorio", age: 24, active: true)
s5 = Student.create(first_name: "Nadia", last_name: "Aponte", age: 23, active: true)

#Program data
p1 = Program.create(title: "Drama", teacher: "Evan Enderle")
p2 = Program.create(title: "Piano", teacher: "Nick Del Valle")
p3 = Program.create(title: "Guitar", teacher: "James Hober")

#Registration data
Registration.create(program_id: p1.id, student_id: s3.id)
Registration.create(program_id: p2.id, student_id: s4.id)
Registration.create(program_id: p2.id, student_id: s5.id)
Registration.create(program_id: p3.id, student_id: s4.id)

puts "✅ Done seeding!"
