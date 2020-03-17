require 'rails_helper'

RSpec.describe Institute, type: :model do
  it { is_expected.to be_mongoid_document }
  it { is_expected.to have_field(:program).of_type(Array) }
  it { is_expected.to have_field(:totalstudent).of_type(Integer) }
  it { is_expected.to have_field(:totalclassroom).of_type(Integer) }
end
