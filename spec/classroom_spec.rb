require 'rspec'
require './lib/classroom'

describe Classroom do
  context 'Attributes' do
    it 'is a classroom' do
      classroom = Classroom.new('History', 4)
      expect(classroom).to be_an_instance_of(Classroom)
      expect(classroom.subject).to eq('History')
      expect(classroom.capacity).to eq 4
      expect(classroom.students).to eq []
    end

    # it 'has a subject' do
    #   classroom = Classroom.new('History', 4)
    # end
    #
    # it 'has a capacity' do
    #   classroom = Classroom.new('History', 4)
    # end

    # it 'has no students by default' do
    #   classroom = Classroom.new('History', 4)
    # end
  end

  # Iteration 2

  context 'Students' do
    it 'returns a list of students' do
      classroom = Classroom.new('History', 4)
      classroom.add_student('Mike')
      classroom.add_student('Megan')
      classroom.add_student('Bob')

      expect(classroom.students).to eq ['Mike', 'Megan', 'Bob']
    end

    it 'returns a list of uppercased names' do
      classroom = Classroom.new('History', 4)
      classroom.add_student('Mike')
      classroom.add_student('Megan')
      classroom.add_student('Bob')

      expect(classroom.yell_at_students).to eq ['MIKE', 'MEGAN', 'BOB']
      expect(classroom.students).to eq ['Mike', 'Megan', 'Bob']
    end
  end

  # iteration 3
  context 'Over Capcity' do
    it 'tests classroom capacity' do
      classroom = Classroom.new('History', 4)
      expect(classroom.over_capacity?).to eq false

      classroom.add_student('Mike')
      classroom.add_student('Megan')
      classroom.add_student('Bob')
      classroom.add_student('Ian')
      expect(classroom.over_capacity?).to eq false

      classroom.add_student('Riker')
      expect(classroom.over_capacity?).to eq true

      classroom.add_student('Nile')
      classroom.add_student('Athena')
      expect(classroom.over_capacity?).to eq true
    end
  end
end
