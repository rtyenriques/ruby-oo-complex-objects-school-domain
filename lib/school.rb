class School
  attr_accessor :school, :roster
 
  

  def initialize(school)
   @school = school
    @roster = {}
  end


  

  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
    
    
  end

  def grade(grade)
   @roster.detect do |x, y|
    if x == grade
        return y
    end
end
  end

  def sort
    sort_student = {}
    @roster.each do |x, y|
        sort_student[x] = y.sort
    end
    sort_student
  end
end