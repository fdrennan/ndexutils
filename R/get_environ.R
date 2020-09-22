#' @importFrom fs dir_exists dir_create
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
    url = 'https://raw.githubusercontent.com/fdrennan/environ/7a40cc327a9547a31a4abe1593973b4822583f0e/main.R',
    destfile = file.path(base_folder, 'main.R')
  )

  download.file(
    url = 'https://raw.githubusercontent.com/fdrennan/environ/7a40cc327a9547a31a4abe1593973b4822583f0e/.Renviron.docker',
    destfile = file.path(base_folder, '.Renviron.docker')
  )
}
