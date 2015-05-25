
########################################################################################
#This function makes a matrix and caches it. This passes the information to cacheSolve
########################################################################################


#We are setting the value of the variable x to a matrix. 
makeCacheMatrix <- function( x = matrix()){
        m <- NULL
        #Creates function. If y exists, it sets x equal to y. This is really never called
        set <- function(y){
                x <<-y
                m<<-NULL
        }
        #This function returns the matrix x
        get <- function() {
                x 
        }
        #This function sets the value of the inverse matrix
        #Assigns the value to m on the gobal environment
        setinverse <- function(solve){
                m<<- solve
                
        }
        #This retreives the value of the inverse by calling m, which was set in the previous function
        getinverse <- function() {
                m
                
        }
        #This returns a list of functions which is called in cacheSolve function
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}
