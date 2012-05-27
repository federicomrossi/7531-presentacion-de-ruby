class A
  @@cvar = "ok"
end

class B < A
  def print_cvar ()
    p (@@cvar)                  
  end
end
