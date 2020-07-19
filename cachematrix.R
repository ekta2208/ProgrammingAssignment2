## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
j <- NULL
 set <- function(y){      ##set the value of the vector
 x <<- y
 j <<- NULL
 }
 get <- function()x    ##get the value of the vector
 setInverse <- function(inverse) j <<- inverse      ##set the inverse to the vector
 getInverse <- function() j          ##get the inverse
 list(set = set, get = get,  ## provide the list
 setInverse = setInverse,
 getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        j <- x$getInverse()   ## get the inverse of the vector
 if(!is.null(j)){             ## if vector is not null
 message("getting cached data")   ## prints the message
 return(j)
 }
 mat <- x$get()
 j <- solve(mat,...)
 x$setInverse(j)      ## set the inverse
 j                  ## print
}
