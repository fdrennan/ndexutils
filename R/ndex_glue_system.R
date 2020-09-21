#' ndex_glue_system
#' @param string A string with {} syntax
#' @param ... Additional parameters to glue
#' @importFrom glue glue
#' @export ndex_glue_system
ndex_glue_system <- function(string, ...) {
  ndex_glue_message(string, ... = ...)
  NDEXR_VERBOSE <- as.logical(Sys.getenv("NDEXR_VERBOSE"))
  if (is.na(NDEXR_VERBOSE)) NDEXR_VERBOSE <- TRUE
  system(string, ignore.stdout = !NDEXR_VERBOSE)
}



# download.file(url = 'https://raw.githubusercontent.com/fdrennan/environ/master/docker-compose.yaml',
#               destfile = 'productor-docker-compose.yaml')
# system('docker-compose -f productor-docker-compose.yaml up')
