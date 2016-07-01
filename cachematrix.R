# The following functions calculate the inverse of a given matrix

#########################################################################################
# First functions contain four functions:
# 'set' sets the value of the matrix
# 'get' gets the value of the matrix
# 'setsolve' sets the value of the inverse matrix
# 'getsolve' gets the value of the inverse matrix

makematriz <- function(m) {
  s <- NULL
  set <- function(y) {
    m <<- y
    s <<- NULL
  }
  get <- function() m
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

##############################################################################################

## returned that function to calculate Inverse



cachesolve <- function(x){
  s<- x$getsolve()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$getmatrix() 
  s <- solve(data)
  x$setsolve(s)
  s
  ## Return a matrix that is the inverse of 'm'
}
