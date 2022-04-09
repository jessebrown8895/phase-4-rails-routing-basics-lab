class StudentController < ApplicationController
    def index 
        student = Student.all
        render json: student
    end

    def grades 
        student = Student.order(grade: :desc)
        # student = Student.students_by_grade
        render json: student
    end 

    def highest
        student = Student.order(grade: :desc).first
        render json: student
    end

end