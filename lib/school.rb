require 'pry'
class School

  attr_accessor :school

  def initialize(school)
    @school = school
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    if self.roster.include?(grade)
      self.roster[grade].push (student)
    else
      self.roster[grade] = []
      self.roster[grade].push(student)
    end
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.each do |grade, students|
      self.roster[grade] = students.sort
    end
  end

end
