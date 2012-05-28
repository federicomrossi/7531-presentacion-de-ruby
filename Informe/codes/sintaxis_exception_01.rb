#Lanzar una exception
[ 0, 2, 4,7,8,10].each do |cond|
  puts "Cond = #{cond}"
  raise(ArgumentError, "Cond is not even number") if (cond % 2) != 0
end

