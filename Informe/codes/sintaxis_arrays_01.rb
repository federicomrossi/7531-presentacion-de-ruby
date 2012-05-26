#Los array pueden almacenar elementos de distintos tipos
ary = [1, 2, "3"]

#Al igual que las cadenas...
ary + ["foo", "bar"] #[1, 2, "3", "foo", "bar"]
ary * 2 #[1, 2, "3", 1, 2, "3"]
ary[-2] #2

#Uso de indices
ary[0,2] #[1, 2]
ary[-2,2] #[2, "3"]
ary[-2..-1] #[2, "3"]

a = [ "a", "b", "c", "d" ]
a.map! {|x| x + "!" }
a             #=>  [ "a!", "b!", "c!", "d!" ]

a = [1, 2, 3, 4, 5, 0]
a.drop_while {|i| i < 3 }   #=> [3, 4, 5, 0]

a = [1, 2, 3]
a.permutation.to_a     #=> [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
