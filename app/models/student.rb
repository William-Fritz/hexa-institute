class Student
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :program, type: Integer
  field :total_credits, type: Integer
end
