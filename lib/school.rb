
require 'pry'

class School
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student,grade)
        roster[grade] ||= []
        roster[grade] << student
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted_roster = roster.sort.to_h
        sorted_roster.sort_by do |grade,students|
            students.sort!
        end
        sorted_roster
    end
end
