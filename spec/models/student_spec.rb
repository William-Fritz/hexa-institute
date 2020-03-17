require 'rails_helper'

RSpec.describe Student, type: :model do
  it { is_expected.to be_mongoid_document }
  it { is_expected.to have_field(:name).of_type(String) }
  it { is_expected.to have_field(:program).of_type(Integer) }
  it { is_expected.to embed_many(:semesterlyplan) }
end


