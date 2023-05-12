module MyEnumerable
  def all?
    each do |e|
      return false unless yield(e)
    end
    true
  end

  def any?
    each do |e|
      return true if yield(e)
    end
    false
  end

  def filter
    result = []
    each do |e|
      result.push e if yield(e)
    end
    result
  end

  def max
    result = -1.0 / 0
    each do |elem|
      result = elem if elem > result
    end
    result
  end

  def min
    result = 1.0 / 0
    each do |elem|
      result = elem if elem < result
    end
    result
  end

  def sort
    each_with_index do |elem_i, i|
      max = elem_i
      max_index = i
      each_with_index do |elem_j, j|
        next if j <= i

        if elem_j > max
          max = elem_j
          max_index = j
        end
      end
      swap(i, max_index) if i != max_index
    end
  end
end
