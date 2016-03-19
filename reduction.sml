fun reduction f [a] = a
| reduction f (a::at) = reduction f(f(a,hd(at))::tl(at));