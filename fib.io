Number fib := method(
  values := list(1,1)
  if (self == 1) then(
    return self 
  ) else(
    if (self == 2) then (return 1) else(
      for(i, 3, self,
        self fibAtIndex(values)
      )
      return values last 
    )
  )
)

Number fibAtIndex := method(values,
  newResult := values at(-1) + values at(-2)
  values append(newResult)
  values
)

1 fib println
2 fib println
3 fib println
4 fib println 
45 fib println
2000 fib println
1146 fib println
