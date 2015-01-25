## Put comments here that give an overall description of what your
## functions do
## Write a pair of functions that cache the inverse of a matrix.

## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse.
## 1 set the value of the matrix
## 2 get the value of the matrix
## 3 set the value of the inverse
## 4 get the value of the inverse
makeCacheMatrix <- function(x = matrix()) {
    i<- NULL
    set <- function(y){
            x <<- y
            i <<- NULL
    }
    get <- function () x
    setinverse <- function(inverse) i <<- inverse 
    getmean <- function() i
    list (set = set, get = get,
          setinverse = setinverse,
          getinverse = getinverse)
}


## Write a short comment describing this function
## If the inverse has already been calculated (and the matrix has not changed), 
## then cacheSolve should retrieve the inverse from the cache.
## Otherwise, it calculates the mean of the data and 
## sets the value of the mean in the cache via the setmean function.
# This functions assumes that the matrix is always invertible

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)){
                message("getting cached data")
                return(i)
        }
        data<- x$get()
        i <- inverse(data, ...)
        x$setinverse(i)
        i
        ## Return a matrix that is the inverse of 'x'
}
