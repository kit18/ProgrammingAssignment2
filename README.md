### Introduction
### Caching the Inverse of a Matrix
This function is able to cache potentially time-consuming computations.

Matrix inversion is usually a costly computation and there may be some benefit to caching the inverse of a matrix rather than computing it repeatedly.

With this function, you will take advantage of the scoping rules of the R language and how they can be manipulated to preserve state inside of an R object.

The `<<-` operator which can be used to assign a value to an object in an environment that is different from the current environment. Below are two functions that are used to create a special object that stores a numeric vector and caches its inverse.

The first function, `makeCacheMatrix` creates a special "vector", which is really a list containing a function to

1.  `makeCacheMatrix`: This function creates a special "matrix" object that can cache its inverse.
2.  `cacheSolve`: This function computes the inverse of the special
    "matrix" returned by `makeCacheMatrix` above. If the inverse has
    already been calculated (and the matrix has not changed), then
    `cacheSolve` should retrieve the inverse from the cache.

Computing the inverse of a square matrix can be done with the `solve`
function in R. For example, if `X` is a square invertible matrix, then `solve(X)` returns its inverse.

We assume that the matrix supplied is always invertible.

