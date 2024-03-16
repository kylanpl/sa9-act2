require 'string_wrapper'
RSpec.describe StringWrapper do
  let(:string) { "test" }
  let(:string_wrapper) { StringWrapper.new(string) }

  describe "#reverse" do
    it "reverses the string" do
      expect(string_wrapper.reverse).to eq("tset")
    end
  end

  describe "#upcase" do
    it "converts the string to uppercase" do
      expect(string_wrapper.upcase).to eq("TEST")
    end
  end

  describe "#downcase" do
    it "converts the string to lowercase" do
      string = "TEST"
      expect(string_wrapper.downcase).to eq("test")
    end
  end
end
