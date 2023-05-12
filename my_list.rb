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
end

p list = MyList.new(*10.times.map { rand(100) })
p random = rand(100)
p(list.all? { |e| e < random })
p(list.all? { |e| e > random })
p(list.any? { |e| e < random })
p(list.any? { |e| e > random })
p(list.filter(&:even?))
