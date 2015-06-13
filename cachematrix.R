## The cachematrix function contains two functions, makeCacheMatrix and
## cacheSolve, which work together to store the inverse of a matrix for later
## use, rather than recalculate it.

## The makeCacheMatrix stores a creates and stores the orignial matrix:
## setMatrix()  : used to cache the matrix
## getMatrix()  : retrieves the matrix
## setInverse() and getInverse() are used by the cacheSolve function.

makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        setMatrix <- function(y) {
                x <<-y
                inverse <<- NULL
        }
        getMatrix <- function () x
        setInverse <- function (i) inverse <<- i
        getInverse <- function () inverse
        
        list(setMatrix = setMatrix, getMatrix = getMatrix,
             setInverse = setInverse, getInverse = getInverse)
}


## cacheSolve accepts the special matrix 'x' (as defined by makeCacheMatrix)
## as an argument. It will compute and return the inverse, unless the inverse
## has already been calculated, in which case it will return the inverse cached
## in makeCacheMatrix.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getInverse()
        if(!is.null(inverse)) {
                message("Retrieving cached inverse")
                return(inverse)
        }
        matrix <- x$getMatrix()
        inverse <-solve(matrix)
        x$setInverse(inverse)
        
        inverse
}
