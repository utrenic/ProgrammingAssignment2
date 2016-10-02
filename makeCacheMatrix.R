makeCacheMatrix() <- function(x = matrix()) {
  # Input: a squared inversible matrix
  # Output: a list containing the followings
  #             1. set the value of the matrix
  #             2. get the value of the matrix
  #             3. set the value of the mean
  #             4. get the value of the mean
  #
  mat <- NULL
  set <- function(y) {
    # '<<-' 
    # cause a search to be made through parent 
    # environments for an existing definition 
    # of the variable being assigned. If such 
    # a variable is found (and its binding is 
    # not locked) then its value is redefined, 
    # otherwise assignment takes place in the 
    # global environment.
    x <<- y
    mat <<- NULL
  }
  get <- function() x
  setInv <- function(invM) mat <<- invM
  getInv <- function() mat
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}
