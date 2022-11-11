class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get "/students" do
    students = Student.all
    students.to_json
  end

end
