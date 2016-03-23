fun insert(f:real, []) = [f]
| insert(f:real, a::at) = if f <= a then f::a::at
						else a::insert(f, at);				
fun insertsort [] = []
| insertsort(a::at) = insert(a, insertsort(at));
