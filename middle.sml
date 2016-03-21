fun length([]) = 0
| length(a::y) = 1 + length(y);

fun middle(x) = if (x mod 2) = 1 then false;    
| fun middle(x) = 