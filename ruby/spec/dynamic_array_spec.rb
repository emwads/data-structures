require "dynamic_array"

describe DynamicArray do
  subject(:arr) { DynamicArray.new }

  describe "#initialize" do
    it "defaults to an empty array" do
      expect(arr.length).to eq(0)
      expect(arr[7]).to raise_error
    end

  end

  describe "#[] / #[]= " do
    it "raises errors with indices out of range" do
      expect(arr[0]).to raise_error
    end

    it "sets and gets elements" do
      8.times { |i| arr[i] = i + 2 }
      8.times { |i| expect(arr[i]).to eq(i + 2)}
    end
  end


end
