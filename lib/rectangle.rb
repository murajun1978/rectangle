require "nkf"

class Rectangle
  def initialize(arg)
    @length, @side = zen_to_han(arg).split(" ")
  end

  def area
    type_filter(@length, @side)
    @length.to_i * @side.to_i
  end

  def circumferential
    type_filter(@length, @side)
    (@length.to_i + @side.to_i) * 2
  end

  private def zen_to_han(char)
    NKF.nkf('-m0Z1 -w', char)
  end

  private def type_filter(*num)
    num.map{ |i| raise unless i =~ /\d+/ }
  end
end
