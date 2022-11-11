class Student < ActiveRecord::Base
  has_many :registrations
  has_many :programs, through: :registrations
  
end