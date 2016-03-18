fun zip nil b = []
| zip a nil = []
| zip (a::at) (b::bt) = (a,b)::(zip at bt);