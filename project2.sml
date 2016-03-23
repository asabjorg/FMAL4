fun zip [] b = []
| zip a [] = []
| zip (a::at) (b::bt) = (a,b)::(zip at bt);

fun greaterThan [] k = []
| greaterThan (a::at) k = if a > k then a::(greaterThan at k)
                	      else greaterThan at k;			 
						  
fun reduction f [a] = a
| reduction f (a::at) = reduction f(f(a,hd(at))::tl(at));

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

fun insert(f:real, []) = [f]
| insert(f:real, a::at) = if f <= a then f::a::at
						  else a::insert(f, at);
						  
fun insertsort [] = []
| insertsort(a::at) = insert(a, insertsort(at));	

fun element (n,[a]) = a
| element (n,(a::at)) = if n = 1 then a
			 else element ((n-1),at);
						 
fun length [] = 0
| length (a::at) = 1 + length(at);

fun middle [a] = a
	| middle (a) = if length(a) mod 2 = 0 then element((((length(a))div 2) + 1), a)
				 else element(((length(a) + 1) div 2), a);					  

fun mymap f [] = []
| mymap f (a::at) = f a :: mymap f at;				 

zip [1,2,3] ["a","b","c"];
zip [1,2] ["a"];

greaterThan [1,5,3,2,4] 3;

reduction op+ [1,3,5,7,9];
reduction op* [1,3,5,7,9];

partition Char.isLower [#"P",#"a",#"3",#"%",#"b"];

insert (3.3, [1.1, 2.2, 4.4, 5.5]);

insertsort [2.2, 4.4, 5.5, 3.3, 1.1];

middle [1,2,3,4,5];
middle [true,false];

(mymap (fn x => x*x)) [1,2,3,4]						  

