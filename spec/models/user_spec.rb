require 'rails_helper'

RSpec.describe User, type: :model do
  describe "creation" do
    before do
      @user = User.create(email: "neil@test", password: "secret12", password_confirmation: "secret12", first_name: "Neil", last_name: "Patel")
    end

    it "can be created" do
      expect(@user).to be_valid
    end
    it "cannot be created without first_name, last_name" do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
  end
end
