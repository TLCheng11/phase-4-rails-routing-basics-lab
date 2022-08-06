class StudentsController < ApplicationController
  def index
    render json: Student.all
  end

  def grades
    render json: Student.grades
  end

  def highest_grade
    render json: Student.all.max_by{|s| s.grade}
  end
end
