makeCacheMatrix <- function(x = matrix()) {
  ## Input: x, a square invertible matrix
  ## Output: a list containing the following functions to 
  ##          1. set the value of matrix
  ##          2. get the value of matrix
  ##          3. set the inverse of matrix
  ##          4. get the inverse of matrix
  ##  this will be used for cacheSolve() ...
  ##
  
  m = NULL
  
  # set the value of matrix
  set = function(y) {
    # "<<-" causes a search to be made through parent environments for 
    # an existing definition of the variable being assigned. If such 
    # a variable is found (and its binding is not locked) then its value 
    # is redefined, otherwise assignment takes place in the global 
    # environment.
    x <<- y
    m <<- NULL
  }
  
  # get the value of matrix
  get = function() x
  
  # set inverse of the matrix
  setInv = function(m_inv) m <<- m_inv
  
  # get inverse of the matrix
  getInv = function() m
  
  # return a list containing these functions 
  list(set=set, get=get, setInv=setInv, getInv=getInv)
}
