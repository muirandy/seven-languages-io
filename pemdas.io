Pemdas := Object clone

Pemdas areBracesBalanced := method(expression,
  sz := (expression size) - 1
  lhs := (expression exSlice(0, 1) == "(")
  rhs := (expression exSlice(sz, sz + 1) == ")")

  lhs and rhs
)

Pemdas evaluateExpression := method(expression,
  e := try(
    doString(expression)
  )
  if (e, "Invalid record error", doString(expression))
)

Pemdas stripBraces := method(expression,
  sz := (expression size) - 1
  expression exSlice(1, sz)
)

Pemdas pemdas := method(expression,

    if((self areBracesBalanced (expression)),
      (self evaluateExpression (self stripBraces (expression))),
      "Invalid record error")


)
