#encoding: utf-8
name = 'John'
proc = Proc.new do
  name = 'Mary'
end
proc.call
puts(name)
