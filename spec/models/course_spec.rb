require "rails_helper"

RSpec.describe Course, type: :model do
  describe "validations" do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to validate_presence_of(:user) }
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:desription) }
    it { is_expected.to validate_presence_of(:cost) }
    it { is_expected.to validate_numericality_of(:cost) }
  end
end
