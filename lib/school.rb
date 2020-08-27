# code here!

class School

    def initialize(name = "")
        @name = name
        @roster = {}
    end

    attr_accessor :name, :roster

    def add_student(name, grade)
        if self.roster[grade] == nil
            self.roster[grade] = []
        end
        self.roster[grade].push(name)
    end

    def grade(grade)
        self.roster[grade]
    end

    def sort
        sorted_students = []
        roster.each do |grade, students|
            students.sort!
        end
    end
end

my_school = School.new()
my_school.add_student("Conrad", 1)
my_school.add_student("Y", 1)
my_school.add_student("Z", 3)
puts my_school.roster
puts my_school.grade(1)
puts my_school.sort