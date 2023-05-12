require './my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  attr_reader :list

  def each(&block)
    list.each(&block)
  end

  def each_with_index(&block)
    @list.each_with_index(&block)
  end

  def swap(idx1, idx2)
    @list[idx1], @list[idx2] = @list[idx2], @list[idx1]
  end
end

p list = MyList.new(*10.times.map { rand(100) })
p random = rand(100)
p(list.all? { |e| e < random })
p(list.all? { |e| e > random })
p(list.any? { |e| e < random })
p(list.any? { |e| e > random })
p(list.filter(&:even?))
p list.max
p list.min
p list.sort
