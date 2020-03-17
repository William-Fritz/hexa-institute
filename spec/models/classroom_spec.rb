require 'rails_helper'

RSpec.describe Classroom, type: :model do
  it { is_expected.to be_mongoid_document }
  it { is_expected.to have_field(:classname).of_type(String) }
  it { is_expected.to have_field(:enrolledstudent).of_type(Integer) }
  it { is_expected.to have_field(:studentname).of_type(Array) }
end

