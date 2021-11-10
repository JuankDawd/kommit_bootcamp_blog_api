require 'rails_helper'

RSpec.describe Todo, type: :model do
  # Association test
  # ensure Todo model has a 1:m relationship with the Item model
  it { is_expected.to have_many(:items).dependent(:destroy) }

  # Validation tests
  # ensure columns title and created_by are present before saving
  it { is_expected.to validate_presence_of(:title) }
  it { expect(:title).not_to be_nil }

  it { is_expected.to validate_presence_of(:created_by) }
  it { expect(:created_by).not_to be_nil }
end
