class Semesterlyplan
  include Mongoid::Document
  include Mongoid::Timestamps
  field :number, type: Integer
  field :enrolled_class, type: Array
  field :total_credit, type: Integer
  field :cumulative_grade, type: Float
  embedded_in :student
end
