
#' Load external data
#'
#' @return a tibble with data
#' @export
load_data <- function(){
  names_path <- system.file("extdata", "names.csv", package = "mysterycoffee")
  df <- utils::read.csv(names_path)
  df <- tibble::as_tibble(df)
  return(df)
}
