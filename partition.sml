fun partition f [] = ([],[])
| partition f lis = 
	let
		fun lis1 f [] = []
		| lis1 f (a::at) = if f(a) then a::(lis1 f at)
			   	 else lis1 f at

		fun lis2 f [] = []
		| lis2 f (b::bt) = if f(b) = false then b::(lis2 f bt)
				  else lis2 f bt

	in (lis1 f lis, lis2 f lis)
end;