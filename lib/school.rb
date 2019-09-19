require 'pry'# code here!
class School

  
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
    @roster.each do |grade, students|
      @roster[grade] = students.sort
    end
  end

end
