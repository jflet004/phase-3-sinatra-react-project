class Program < ActiveRecord::Base
  has_many :registrations
  has_many :students, through: :registrations

  def add_student(student)
    self.students << student
  end


end


