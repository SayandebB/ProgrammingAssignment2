## Thsi code consists of 2 functions: makeCacheMatrix and cacheSolve
## makeCacheMatrix takes an invertible matrix and returns 4 functions to 
## cache oeprations to get the matrix, get its inverse, return the matrix
## and return its inverse.
## cacheSolve uses functions returned by the above and picks up the matrix, 
## then calculates its inverse and returns the invers


## Function to return 4 functions to set and return matrix n its inverse

makeCacheMatrix<-function(xMat)
{
	if(!is.matrix(xMat)) print("You must enter a matrix as argument")
	else
	{
		set<-function(yMat)
		{
			xMat<<-yMat
			invMat<<-NULL
		}
		get<-function() xMat
		setInv<-function(invOfMat) invMat<<-invOfMat
		getInv<-function() invMat

		list(set=set,get=get,setInv=setInv, getInv=getInv)
	}

}


## Function to calculate the inverse of matrix and return it 
## using makeCacheMatrix

cacheSolve <- function(mat, ...) 
{
        ## Return a matrix that is the inverse of 'x'
	dataMat<-mat$get()
	invOfMat<-solve(dataMat)
	mat$setInv(invOfMat)
	invOfMat



}
