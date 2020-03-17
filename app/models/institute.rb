class Institute
  include Mongoid::Document
  include Mongoid::Timestamps
  field :program, type: Array
  field :totalstudent, type: Integer
  field :totalclassroom, type: Integer
end
