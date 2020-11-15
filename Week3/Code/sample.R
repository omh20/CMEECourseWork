########### Functions ########

### A function to take a sample of size n from a population "popn"
myexperiment <- function(popn, n){
    pop_sample <- sample(popn, n, replace =  FALSE)
    return(mean(pop_sample))
}

## Calculate means using a for loop without preallocation: 
loopy_sample1 <-function(popn, n, num){
    result1 <- vector() #Initialize empty vector of size 1
    for(i in 1:num){
        result1 <- c(result1, myexperiment(popn, n))
    }
    return(result1)
}

## To run "num" iterations of the experiment using a for loop on a vector
loopy_sample2 <- function(popn, n, num){
    result2 <- vector(,num)
    for(i in 1:num){
        result2[i] <- myexperiment(popn, n)
    }
    return(result2)
}

## To run "num" iterations of the experiment using a for loop on a list with preallocation
lapply_sample <- function(popn, n, num){
    result4 <- lapply(1:num, function(i) myexperiment(popn, n))
    return(result4)
}

## To run "num" iterations of the experiment using vectorization with lapply:
sapply_sample <- function(popn, n, num){
    result5 <- sapply(1:num, function(i) myexperiment(popn, n))
    return(result5)
}
popn <- rnorm(1000)
hist(popn)