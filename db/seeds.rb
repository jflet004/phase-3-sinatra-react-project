puts "💥 Destroying previous data..."
#Destroy data
Student.destroy_all
Program.destroy_all
Registration.destroy_all

puts "🌱 Seeding data..."
#Student data
s1 = Student.create(first_name: "Jose", last_name: "Flores", age: 33, active: false)
s2 = Student.create(first_name: "Cassandra", last_name: "Fernandez", age: 30, active: false)
s3 = Student.create(first_name: "Taylor", last_name: "Franks", age: 33, active: true)
s4 = Student.create(first_name: "Louis", last_name: "Osmo", age: 24, active: true)
s5 = Student.create(first_name: "Natalie", last_name: "Alvarez", age: 23, active: true)

#Program data
p1 = Program.create(title: "Drama", teacher: "Evan Queen")
p2 = Program.create(title: "Piano", teacher: "Nick Horn")
p3 = Program.create(title: "Guitar", teacher: "James Jackson")

#Registration data
Registration.create(program_id: p1.id, student_id: s3.id)
Registration.create(program_id: p2.id, student_id: s4.id)
Registration.create(program_id: p2.id, student_id: s5.id)
Registration.create(program_id: p3.id, student_id: s4.id)
Registration.create(program_id: p3.id, student_id: s1.id)
Registration.create(program_id: p3.id, student_id: s2.id)

puts "✅ Done seeding!"


