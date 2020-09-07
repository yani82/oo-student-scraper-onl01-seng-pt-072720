class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  @@all = []


  def initialize(student_hash)	  def initialize(student_hash)

    student_hash.each {|key, value| self.send("#{key}=", value)}
    @@all << self
  end	  end


  def self.create_from_collection(students_array)	  def self.create_from_collection(students_array)

    students_array.each { |indiv| Student.new(indiv) }
  end	  end


  def add_student_attributes(attributes_hash)	  def add_student_attributes(attributes_hash)

    attributes_hash.each {|key, value| self.send("#{key}=", value)}
  end	  end


  def self.all	  def self.all

    @@all
  end	  end
end	end
