["puts 'start'", "x","puts 'end'"].each do |string|
  begin
     eval string
     raise ArgumentError, "Error Raised" if string.include?('start')

  rescue ArgumentError => bang
    print "Argument Error: " + bang 
    puts ""
  end
    else
    print "Ok\n"
  end
end