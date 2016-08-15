require "static_array"

describe StaticArray do
  subject(:arr) { StaticArray.new }

  describe "#initialize" do
    it "starts with an empty and fixed default length of 8" do
      expect(arr.length).to eq(8)
      8.times { |i| expect(arr[i]).to be(nil)}
    end
    it "initializes diferent lengths" do
      expect(StaticArray.new(3).length).to eq(3)
    end
  end

  describe "#[] / #[]= " do
    it "sets and gets elements" do
      8.times { |i| arr[i] = i + 2 }
      8.times { |i| expect(arr[i]).to eq(i + 2)}
    end
  end

end
