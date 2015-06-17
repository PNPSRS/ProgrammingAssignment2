## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  myInverse <- NULL
  set <- function(y){
    x <<- y
    myInverse <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) myInverse <<- inverse
  getInverse <- function() myInverse
  list(set=set,get=get,
       setInverse=setInverse,
       getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  myInverse <- x$getInverse()
  if(!is.null(myInverse)){
    message("getting cached data")
    return(myInverse)
  }
  data <- x$get()
  myInverse <- solve(data) 
  x$setInverse(myInverse)
  myInverse
}
