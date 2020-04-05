## Caching the inverse of a matrix

## the makeCacheMatrix function creates a list of functions 1 set the matrix 2 get the matrix 3 set the inverse of the matrix 4 get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setsolve <- function(solve) m <<- solve
    getsolve <- function() m
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)
}


## The cacheSolve function calculates the Inverse of a matrix created with the above function

cacheSolve <- function(x, ...) {
    m <-x$getsolve()
    if(!is.null(m)) {
        meassage("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setsolve(m)
    m
}
