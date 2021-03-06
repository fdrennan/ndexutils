#' get_environ
#' @importFrom utils download.file
#' @importFrom fs dir_exists dir_create
#' @param base_folder A folder to create if it doesn't exist to store environ data
#' @export get_environ
get_environ <- function(base_folder = 'environ_files') {

  if (!dir_exists(base_folder)) {
    dir_create(path = base_folder)
  }

  download.file(
    url = 'https://raw.githubusercontent.com/fdrennan/environ/master/docker-compose.yaml',
    destfile = file.path(base_folder, 'docker-compose.yaml')
  )

  download.file(
    url = 'https://raw.githubusercontent.com/fdrennan/environ/master/main.R',
    destfile = file.path(base_folder, 'main.R')
  )

  download.file(
    url = 'https://raw.githubusercontent.com/fdrennan/environ/master/.Renviron.docker',
    destfile = file.path(base_folder, '.Renviron.docker')
  )
}
