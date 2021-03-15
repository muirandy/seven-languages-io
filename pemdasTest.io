doRelativeFile("Assert.io")
doRelativeFile("pemdas.io")

pemdasTest := Object clone

pemdasTest t := method(
  Assert isEqual(2, (Pemdas pemdas ("(1+1)")))
  Assert isEqual(2, (Pemdas pemdas ("(1+1)")))
  Assert isEqual(6, (Pemdas pemdas ("(3*2)")))
  Assert isEqual(8, (Pemdas pemdas ("(2**3)")))
  Assert isEqual(16, (Pemdas pemdas ("(2*2^3)")))
  Assert isEqual(101, (Pemdas pemdas ("( 1 + ( ( 2 + 3 ) * (4 * 5) ) )")))
  Assert isEqual(5, (Pemdas pemdas ("( 5 ( 4 ( 3 ( 2 ( 1 * 9 ) / 8 - 7 ) + 6 ) ) )")))
)


pemdasTest t2 := method(
  Assert isEqual("Invalid record error", (Pemdas pemdas ("1+1")))
  Assert isEqual("Invalid record error", (Pemdas pemdas ("(1+1")))
  Assert isEqual("Invalid record error", (Pemdas pemdas ("(1+1))")))
  Assert isEqual("Invalid record error", (Pemdas pemdas ("((1+1)")))
  Assert isEqual("Invalid record error", (Pemdas pemdas ("(1+1) + (2+2)")))
  "pass"
)

pemdasTest t
pemdasTest t2

"pass"