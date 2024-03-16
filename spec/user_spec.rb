require 'user'
RSpec.describe User do
  let(:user) { User.new("testusername")}
  describe "#log_in" do
    it "logs the user in" do
    # Fill in the test

    user.log_in
    expect(user.logged_in).to be true
    end
  end
  describe "#log_out" do
    it "logs the user out" do
    # Fill in the test
    user.log_out
    expect(user.logged_in).to be false
   end
  end
  describe "#username" do
    it "returns the correct username" do
    # Fill in the test
    expect(user.username).to eq('testusername')
    end
  end
end
