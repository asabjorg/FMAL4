fun mymap f [] = []
| mymap f (a::at) = f a :: mymap f at;