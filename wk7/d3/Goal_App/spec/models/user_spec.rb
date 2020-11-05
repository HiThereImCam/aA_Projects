require 'rails_helper'
RSpec.describe User, type: :model do
  subject { User.new(username: "GlizzyMan", password: "hunter12") }
  describe "validations" do
    it {should validate_presence_of(:username)}
    it {should validate_presence_of(:password_digest)}
    it {should validate_presence_of(:session_token)}
    it {should validate_uniqueness_of(:username)}
  end
end
