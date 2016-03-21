fun reduction f [a] = a
| reduction f (a::at) = reductionf(a,  f at);

fun insert([], a) = a; 
| insert (f:real, a::at) = if f > a a:: insert(f, at) 
						else f::a::at