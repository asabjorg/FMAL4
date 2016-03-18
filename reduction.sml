fun reduction f [a] = a
| reduction f (a::at) = f(a, reduction f at);