class Institute
  include Mongoid::Document
  include Mongoid::Timestamps
  field :program, type: Integer
  field :total_student, type: Integer
  field :total_classroom, type: Integer
end
