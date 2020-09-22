## ndexutils

 <!-- badges: start -->
  [![Travis build status](https://travis-ci.com/fdrennan/ndexutils.svg?branch=master)](https://travis-ci.com/fdrennan/ndexutils)
  [![Codecov test coverage](https://codecov.io/gh/fdrennan/ndexutils/branch/master/graph/badge.svg)](https://codecov.io/gh/fdrennan/ndexutils?branch=master)
  <!-- badges: end -->
  
Various functions I would like to have in all packages

Packages:
#### [environ](https://github.com/fdrennan/environ)
#### [ndexutils](https://github.com/fdrennan/ndexutils)
#### [biggr](https://github.com/fdrennan/biggr)
#### [ndexssh](https://github.com/fdrennan/ndexssh)
#### [ndexrstrator](https://github.com/fdrennan/ndexrstrator)
#### [ndexie](https://github.com/fdrennan/ndexie)
#### [interface](https://github.com/fdrennan/interface)

## Installation
```
renv::install('fdrennan/ndexutils')
# OR
devtools::install_github('fdrennan/ndexutils')
```

```{r}
Sys.setenv(NDEXR_VERBOSE = 'true')
name = 'Freddy'
ndex_glue_message('Hello {name}') # use glue and message at the same time
ndex_glue_system('echo {name}') # use glue, message, system on same string
```



