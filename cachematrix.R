## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m_inv <- NULL
        set <- function(y) {
                x <<- y
                m_inv <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) m_inv <<- inverse
        getinverse <- function() m_inv
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cachesolve <- function(x, ...) {
        m_inv <- x$getinverse()
        if(!is.null(m_inv)) {
                message("getting cached data of the ineverse of matrix")
                return(m_inv)
        }
        matrix <- x$get()
        m_inv <- solve(matrix, ...)
        x$setinverse(m_inv)
        m_inv
}
## Pass the value that is returned from the makeCacheMatrix function rather than the function itself 
## which will throw an error for atomic vector
cachevalue<-numeric()
cachevalue<-makeCacheMatrix(a)
cachesolve(cachevalue)
                


