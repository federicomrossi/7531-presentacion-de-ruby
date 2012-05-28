class Getdata                   
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age  = age
  end
end

ga = Getdata.new("john", "55")
puts "Name = #{ga.name} -- Age = #{ga.age}"
