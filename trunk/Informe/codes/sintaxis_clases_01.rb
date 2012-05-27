class C
  def initialize ()
    @i = "ok"
  end
  def get_i ()
    return @i
  end
end
c = C.new ()
p (c.get_i ())                  # "ok" is displayed