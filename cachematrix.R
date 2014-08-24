## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) 
{
        mat <- NULL
        set <- function(y) {
                x <<- y
                mat <<- NULL
        }
        get <- function() x
        setInvMat <- function(mean) mat <<- mean
        getInvMat <- function() mat
        list(set = set, get = get,
             setInvMat = setInvMat,
             getInvMat = getInvMat)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	mat <- x$getInvMat()
	## if inverse exist in mat return.
        if(!is.null(mat)) {
                message("getting cached data")
                return(mat)
        }
        ## else calculate it again.
        data <- x$get()
        m <- solve(data, ...)
        x$setInvMat(mat)
        mat ##Return cached matrix.
}
