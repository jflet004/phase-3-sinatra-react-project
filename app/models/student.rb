class Student < ActiveRecord::Base
  has_many :registrations
  has_many :programs, through: :registrations

  def self.register_student(first_name, last_name, age, status)
    self.create(first_name: first_name, last_name: last_name, age: age, active: status)
  end
  
end

