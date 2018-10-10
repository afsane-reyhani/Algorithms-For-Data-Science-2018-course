# Exerciese for Section 2.3 (Mining of Massive Datasets)
## Exercise 2.3.1 :
Design map-reduce algorithms to take a very large file of integers and produce as output: <br>(a) The largest integer. <br>(b) The average of all the integers. <br>(c) The same set of integers, but with each integer appearing only once. <br>(d) The count of the number of distinct integers in the input.
### solution (a)
Map : for each inteager i in the file , emit key-value pair(m,i)<br> Reduce:input of this task is pair thet this key is m ,and associated value is lis[i1,...,in].that each ij is value of pair of output of map task.output of reduce task is pair(m,max{i1,...,in})<br> notice that max is a associative and commutative function,we can produce only one pair (m,max{i1,...,in}) in map task.
### solution (b)
Map : for each inteager i in the file , emit key-value pair(m,i)<br> Reduce:input of this task is pair thet this key is m,and associated value is list[i1,...,in] that each ij is value of pair of output of map task.output of reduce task is pair(1,averge{i1,..,in}) 
### solution (c)
Map : for each inteager i in the file , emit key-value pair(i,i)<br> Reduce:input of this task is pair thet this key is i,and associated value is lis[i,..,i].that each i is value of pair of output of map task. output of reduce task is pair(i,i) <br> it produces exactly one pair (i,i) for this key i.
### solution (d)
we sould use two map-reduse <br> 1: Map : for each inteager i in the file , emit key-value pair(i,i)<br> Reduce:input of this task is pair thet this key is i,and associated value is lis[i,..,i].that each i is value of pair of output of map task. output of reduce task is pair(i,i) <br> it produces exactly one pair (i,i) for this key i. <br>  2:  Map : for each inteager i in the file , emit key-value pair(1,1) <br> Reduce : input of this task is pair thet this key is 1 ,and associated value is lis[1,..,1].that each 1 is value of pair of output of map task.output of reduce task is pair(1,sum{1,...,1}).output of reduce task is number of distinct integers in the input.
## Exercise 2.3.2 : 
Our formulation of matrix-vector multiplication assumed that the matrix M was square. Generalize the algorithm to the case where M is an r-by-c matrix for some number of rows r and columns c.
### solution
