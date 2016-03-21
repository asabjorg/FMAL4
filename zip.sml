fun zip [] b = []
| zip a [] = []
| zip (a::at) (b::bt) = (a,b)::(zip at bt);