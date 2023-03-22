require 'rspec'
require './lib/student'


describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      student = Student.new("John") #SETUP
      expect(student).to be_an_instance_of(Student)
      expect(student).to be_a(Student)
    end

    it "has a name" do
      # test it has a name
      student = Student.new("John")
      expect(student.name).to eq("John")
    end

    it "has cookies" do
      # test it has cookies
      student = Student.new("John")
      expect(student.cookies?).to be(true)

    end

    it "can add cookies" do
      # test it can add cookies
      student = Student.new("John")
      expect(student.num_cookies).to eq(3)
      student.add_cookie
      10.times do
        student.add_cookie
      end
      expect(student.num_cookies).to eq(14)
    end
    
  end
end
