#Case
i=8
case i
  when 1, 2..5
    print "1..5\n"
  when 6..10
    print "6..10\n"
end
#6..10

case 'abcdef'
  when 'aaa', 'bbb'
    print "aaa o bbb\n"
  when /def/
    print "incluye /def/\n"
end
#incluye /def/

#While
i = 0
print "Es cero.\n" if i == 0
print "Es negativo\n" if i < 0
print "#{i+=1}\n" while i < 3
#Es cero.
#1
#2
#3

#For 
for elm in [100,-9.6,"pickle"]
  print "#{elm}\t(#{elm.type})\n"
end
#100 (Fixnum)
#-9.6 (Float)
#pickle (String)

# For estilo c o java
for i in coleccion
..
end

# For estilo smalltalk
coleccion.each {|i|
...
}
