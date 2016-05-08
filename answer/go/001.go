package main

import "fmt"

func main () {

  sum := 0
  for tmp :=1; tmp<1000; tmp++ {
    if tmp % 3 == 0 || tmp % 5 ==0 {
      sum +=tmp
    }
  }
  fmt.Println(sum)
}
