class Student
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :program, type: Integer
  embeds_many :semesterlyplan
end
