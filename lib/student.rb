require_relative "../config/environment"

class Student
  
  attr_accessor :name, :grade
  attr_reader :id 
  
  @@all = []
  
  def initialize(name, grade, id=nil)
    @name = name
    @grade = grade
    @id = id
    @@all << self
  end
  
  
  def self.create_table
    sql = <<-SQL CREATE TABLE students (id INTEGER PRIMARY KEY, name TEXT, grade TEXT) SQL DB[:conn].execute(sql)end
end