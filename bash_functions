function random()
{ 
  echo $(($(($RANDOM%$1))+1))

  return 0
}

export -f random

