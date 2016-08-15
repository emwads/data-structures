# This class emulates a static array which has a fixed size and location in memory

class StaticArray

  attr_reader :length

  def initialize(length = 8)
    @store = Array.new(length)
    @length = length
  end

  # fixed place in memory means time O(1) for accessing and setting
  def [](index)
    raise "index out of bounds" if index < 0 || index >= @length || !index.is_a?(Integer)
    @store[index]
  end

  def []=(index, value)
    raise "index out of bounds" if index < 0 || index >= @length || !index.is_a?(Integer)
    @store[index] = value
  end

end
