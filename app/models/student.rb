class Student < ApplicationRecord

  scope :highest_grade, -> {self.students_by_grade.limit(1)}
  def to_s
    "#{self.first_name} #{self.last_name}"
  end

  def self.students_by_grade
    self.order(grade: :desc)
  end

  

end
