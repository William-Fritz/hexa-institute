class Classroom
  include Mongoid::Document
  include Mongoid::Timestamps
  field :class_name, type: String
  field :enrolled_student, type: Integer
  field :student_name, type: Array, default: []
end
