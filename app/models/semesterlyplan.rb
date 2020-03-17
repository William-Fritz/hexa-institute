class Semesterlyplan
  include Mongoid::Document
  include Mongoid::Timestamps
  field :number, type: Integer
  field :enrolledclass, type: Array
  field :totalcredit, type: Integer
  field :cumulativegrade, type: Float
  embedded_in :student
end
