class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  # def students_by_grade
  #   Students.order(grade: :desc)
  # end

end
