source('makeCacheMatrix.R')
source('cacheSolve.R')

# Create normal distributed random number 1000*1000
x <- runif(1000*1000)
# Create a matrix with size 1000*1000 with x
mat <- matrix(x, nrow=1000, ncol=1000)

# make cacheMatrix
test_matrix <- makeCacheMatrix(mat)
test_matrix_1 <- test_matrix$get()

t1 <- Sys.time()
cacheSolve(test_matrix)
dur <- abs(difftime(Sys.time(),t1))
print(paste("No cahce duration:", dur))

t2 <- Sys.time()
cacheSolve(test_matrix)
dur2 <- abs(difftime(Sys.time(),t2))
print(paste("Cache duration:", dur2))
