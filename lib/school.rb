require 'pry'# code here!
class School

  attr_accessor :roster
  attr_reader :name


  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade] == nil
    @roster[grade] = []
    @roster[grade] << name
  else
    @roster[grade] << name
  end
  end

  def grade(students)
    @roster[students]
  end

  def sort
    sorted_students = {}
    @roster.each do |grade, students|
      if sorted_students == nil
      sorted_students[grade] = @roster[students].sort
      end
    end
    sorted_students
  end

end
