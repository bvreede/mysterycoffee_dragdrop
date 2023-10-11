#' Make groups of people
#'
#' This function randomly matches a group of people. If the group is uneven,
#' then one person will be removed.
#'
#' @param names a vector with names of people to match
#'
#' @return a matrix of coupled names
#' @export
make_groups <- function(names){
  if(!class(names) %in% c("character","integer")){
    stop("Input must be a vector.")
  }

  # Shuffle names, and remove one if there is an uneven number
  if(length(names)%%2 > 0){
    names_shuffled <- sample(names, length(names)-1)
  } else{
    names_shuffled <- sample(names)
  }

  # Arrange the  names
  names_coupled <- matrix(names_shuffled, ncol = 2)

  return(names_coupled)
}


