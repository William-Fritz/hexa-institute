class Classroom
  include Mongoid::Document
  include Mongoid::Timestamps
  field :classname, type: String
  field :enrolledstudent, type: Integer
  field :studentname, type: Array, default: []
end
