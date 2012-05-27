def walk(dir)
  case dir
    when :North
       puts "North Pasture"
    when :east
       puts "Homestead"
    when :South
       puts "ocean"
    when :West
       puts "city"
    else
       puts "unkown"
  end
end

   puts "Show Direction:"
   walk(:North)
   puts "Show Direction"
   walk(:South)
   puts "Done"