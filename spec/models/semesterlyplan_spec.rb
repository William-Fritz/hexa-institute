require 'rails_helper'

RSpec.describe Semesterlyplan, type: :model do
  it { is_expected.to be_mongoid_document }
  it { is_expected.to have_field(:number).of_type(Integer) }
  it { is_expected.to have_field(:enrolledclass).of_type(Array) }
  it { is_expected.to have_field(:totalcredit).of_type(Integer) }
  it { is_expected.to have_field(:cumulativegrade).of_type(Float) }
  it { is_expected.to be_embedded_in(:student) }
end

