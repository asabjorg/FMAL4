fun greaterThan [] k = []
| greaterThan (a::at) k = if a > k then a::(greaterThan at k)
                	         else greaterThan at k;