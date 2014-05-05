#encoding: utf-8

multiply = lambda {|x, y| x * y}
n = multiply.call(20, 3)
puts n
n = multiply.call(10, 50)
puts n

multiply = proc do |x, y|
  x * y
end

n = multiply.call(20, 3)
puts n
n = multiply.call(10, 50)
puts n
