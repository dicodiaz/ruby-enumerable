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

list = MyList.new(1, 2, 3, 4)
list.each { |elem| puts elem }
