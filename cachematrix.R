## The cachematrix function contains two functions, makeCacheMatrix and
## cacheSolve, which work in tandem

## The makeCacheMatrix contains :
## setMatrix()  : used to cache the matrix
## getMatrix()  : retrieves the matrix
## setInverse 

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
             setInverse = setInverse, getInverse = get Inverse)

}


## cacheSolve both caches the inverse of matrix 'x' as defined by
## setMatrix. If the inverse has already been cached, cacheSovle will retrieve
## the inverse


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getInverse()
        if(!is.null(inverse)) {
                message("Retrieving cached inverse")
                return(m)
        }
        matrix <- x$getMatrix()
        inverse <-solve(matrix)
        x$setInverse(inverse)
        inverse
        
}
