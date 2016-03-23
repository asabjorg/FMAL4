fun element (n,[a]) = a
| element (n,(a::at)) = if n = 1 then a
			 else element ((n-1),at);
						 
fun length [] = 0
| length (a::at) = 1 + length(at);

fun middle [a] = a
	| middle (a) = if length(a) mod 2 = 0 then element((((length(a))div 2) + 1), a)
				 else element(((length(a) + 1) div 2), a);


