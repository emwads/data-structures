# This class initializes with a static array of a given length and
# dynamically resizes when the number of elements is equal to the maximum
# size of the array

require 'static_array'

class DynamicArray

  attr_reader :length

  def initialize (length = 8)
    @store = StaticArray.new(length)
    @max_size = length
    @length = 0
  end

  def [](index)
  end

  def []=(index, value)
  end

end
