class Classroom
  attr_reader :subject, :capacity, :students

  def initialize(subject, capacity)
    @subject = subject
    @capacity = capacity
    @students = []
  end

  def add_student(student_name)
    @students << student_name
  end

  def yell_at_students
    @students.map do |student|
      student.upcase
    end

    # upcased_names = []
    # @students.each do |student|
    #   upcased_names << student.upcase
    # end
    # upcased_names
  end

  def over_capacity?
    # option 1, perfectly acceptable
    # if @students.length > @capacity
    #   true
    # else
    #   false
    # end

    # option 2, also a good option
    # return true if @students.length > @capacity
    # false

    # option 3, nice and short
    @students.length > @capacity
  end
end
