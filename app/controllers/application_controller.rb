class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  #Student routes
  get "/students" do
    students = Student.all
    students.to_json(include: :programs)
  end
  
  get "/students/:id" do
    student = Student.find(params[:id])
    student.to_json(include: :programs)
  end

  post "/students" do
    student = Student.create(first_name: params[:first_name], last_name: params[:last_name], age: params[:age], active: params[:active])
    student.to_json
  end
  
  delete "/students/:id" do
    student = Student.find(params[:id])
    student.destroy
    student.to_json
  end
  
  #Program routes
  get "/programs" do
    programs = Program.all
    programs.to_json(include: :students)
  end

  get "/programs/:id" do
    program = Program.find(params[:id])
    program.to_json(include: :students)
  end


end
