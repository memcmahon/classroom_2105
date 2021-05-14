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
end
