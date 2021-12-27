trap killgroup SIGINT

killgroup(){
  echo do some stuff before leaving...
  kill 0
}

