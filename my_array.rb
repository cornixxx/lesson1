class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    array.size
  end

  def reverse
    array.reverse
  end

  def max
    array.max
  end

  def min
    array.min
  end

  def desc
    array.sort.reverse
  end

  def asc
    array.sort
  end

  def odd
    array.select(&:odd?)
  end

  def multiple_to_three
    array.find_all { |i| (i % 3).zero? }
  end

  def uniq
    array.uniq
  end

  def devide_on_ten
    array.map { |i| i / 10.0 }
  end

  def chars
    alphabet = (:a..:z).to_a
    array.map { |i| alphabet[i - 1] }
  end

  def switch
    min_i = @array.index(@array.min)
    max_i = @array.index(@array.max)
    array[min_i], array[max_i] = array[max_i], array[min_i]
    array
  end

  def before_min
    array.first(array.index(array.min))
  end

  def three_smallest
    array.sort.first(3)
  end
end
