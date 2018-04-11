Number fib := method(
  values := list(1,1)
  if (self == 1) then(
    self println
  ) else(
    if (self == 2) then (1 println) else(
      for(i, 3, self,
        self fibAtIndex(values)
      )
      values last println
    )
  )
)

Number fibAtIndex := method(values,
  newResult := values at(-1) + values at(-2)
  values append(newResult)
  values
)

1 fib 
2 fib
3 fib 
4 fib 
45 fib
2000 fib
1146 fib 
