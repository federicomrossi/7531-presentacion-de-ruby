class Base
   def btest
     puts "Test in Base Called!"
   end
   private :btest
end

class C < Base
  public :btest
end

class D < Base
end

c = C.new()
c.btest()
#Test in Base Called!
d = D.new()
d.btest()
#private method `btest' called for # (NoMethodError)
