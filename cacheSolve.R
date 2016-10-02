cacheSolve<- function(x, ...) {
  # Input: x = output of makeCacheMatrix()
  # Output: return inverse of the original matrix, i.e. input to makeCacheMatrix()
  #
  
  # getting inverse of the matrix
  m <- x$getInv()
  # check if inverse has been computed 
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  # if not compute: compute inverse 
  data <- x$get()
  # compute inverse of data 
  m <- solve(data, ...)
  
  # set inverse of matrix in the cache via the setInv function
  x$setInv(m)
  
  # return inverse
  return(m)
}
