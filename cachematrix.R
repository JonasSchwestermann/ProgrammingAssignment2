# Programming assignment 2 - Lexical Scoping - Jonas Schwestermann

## Generating a special matrix that can cache its inverse
makeCacheMatrix <- function(m = matrix()) {
    d
    ## Initializing the inverse property
    i <- NULL
    
    ## Setting the matrix
    set <- function(matrix) {
        m <<- matrix
        i <<- NULL
    }
    
    ## Getting the matrix
    get <- function() {
        ## Returning the matrix
        m
    }
    
    ## Setting the inverse of the matrix
    setInverse <- function(inverse) {
        i <<- inverse
    }
    
    ## Getting the inverse of the matrix
    getInverse <- function() {
        ## Returning the inverse property
        i
    }
    
    ## Returning a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}

---------------

cacheSolve <- function(x, ...) {
    
    ## Returning a matrix that is the inverse of 'x'
    m <- x$getInverse()
    
    ## Only returning the inverse if its already set
    if( !is.null(m) ) {
        message("getting cached data")
        return(m)
    }
    
    ## Getting the matrix from our object
    data <- x$get()
    
    ## Calculating the inverse using matrix multiplication
    m <- solve(data) %*% data
    
    ## Setting the inverse to the object
    x$setInverse(m)
    
    ## Returning the matrix
    m
}

