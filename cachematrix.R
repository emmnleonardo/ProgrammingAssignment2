## Put comments here that give an overall description of what your
## functions do

## A function that creates a matrix

makeCacheMatrix <- function(x = matrix()) {
  i = NULL
  set = function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() {x}
  set_inverse <- function(inverse) {inv <<- inverse}
  get_inverse <- function() i
  list(set=set, get = get, set_inverse = set_inverse, get_inverse = get_inverse)
}


## A function that first checks if the inverse of matrix has been cached or solves the inverse of the matrix

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$get_inverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  matr <- x$get()
  i <- solve(matr,...)
  x$set_inverse(i)
  i
}
