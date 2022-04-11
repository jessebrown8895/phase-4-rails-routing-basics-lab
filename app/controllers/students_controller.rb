class StudentsController < ApplicationController
    def index 
        student = Student.all
        render json: student
    end

    def grades 
        # student = Student.order(grade: :desc)
        student = Student.students_by_grade
        render json: student
    end 

    def highest_grade
        # student = Student.order("grade desc").limit
        student = Student.highest_grade.first
        render json: student
    end

end