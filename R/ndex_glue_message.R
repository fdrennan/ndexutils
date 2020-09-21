#' ndex_glue_me
#' @param string A string with {} syntax
#' @param ... Additional parameters to glue
#' @importFrom glue glue
#' @export ndex_glue_message
ndex_glue_message <- function(string, ...) {

  NDEXR_VERBOSE = as.logical(Sys.getenv("NDEXR_VERBOSE"))

  if (is.na(NDEXR_VERBOSE)) {
    warning('Pass NDEXR_VERBOSE=true or NDEXR_VERBOSE=false in your .Renviron file\nDefaulting to NDEXR_VERBOSE=true')
    NDEXR_VERBOSE = TRUE
  }

  string <- glue(string, ... = ...)

  if (NDEXR_VERBOSE) {
    message(glue("Command: {string}"))
  }

}


