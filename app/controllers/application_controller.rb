class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  #Student routes
  get "/students" do
    students = Student.all
    students.to_json(include: :programs)
  end
  
  get "/students/:id" do
    student = Student.find(params[:id])
    student.to_json(include: :programs)
  end

  get "/students/:id/programs" do
    student_programs = Student.find(params[:id]).programs
    student_programs.to_json
  end

  post "/students" do
    student = Student.create(first_name: params[:first_name], last_name: params[:last_name], age: params[:age], active: params[:active])
    student.to_json
  end

  patch "/students/:id" do
    student = Student.find(params[:id])
    student.update(first_name: params[:first_name], last_name: params[:last_name], age: params[:age], active: params[:active])
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
    # students = program.students
    program.to_json(include: :students)
  end

  get "/programs/:id/students" do
    program_students = Program.find(params[:id]).students
    program_students.to_json
  end

  post "/programs" do
    program = Program.create(title: params[:title], teacher: params[:teacher])
    program.to_json
  end

  patch "/programs/:id" do
    program = Program.find(params[:id])
    program.update(title: params[:title], teacher: params[:teacher])
    program.to_json
  end

  delete "/programs/:id" do
    program = Program.find(params[:id])
    program.destroy
    program.to_json
  end
end
