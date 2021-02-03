function random()
{ 
  typeset -i inf=0
  typeset -i supp=$1

  if [ -n "$2" ]; then
    inf=$supp
    supp=$2
  fi

  supp=$(($supp + 1))

  typeset -i diff=$(($supp - $inf))

  case $# in
    0)
      echo $RANDOM
      ;;
    1|2)
      echo $(($(($RANDOM%$diff))+$inf))
      ;;
    *)
      echo "-1"
      return 1
      ;;
  esac

  return 0
}

export -f random

