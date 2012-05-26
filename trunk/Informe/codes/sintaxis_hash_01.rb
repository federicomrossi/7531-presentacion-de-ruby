h = {1 => 2, "2" => "4"} #{"2"=>"4", 1=>2}
h[1] #2
h[5] #nil
h[5] = 10 # anadir un valor
h[1]=nil # borrar un valor
h #{5=>10, "2"=>"4", 1=>nil}

h = { "a" => 100, "b" => 200, "c" => 300 }
h.delete_if {|key, value| key >= "b" }   #=> {"a"=>100}