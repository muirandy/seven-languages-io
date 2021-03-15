doRelativeFile("Assert.io")
doRelativeFile("pemdas.io")

Assert isEqual(2, (Pemdas pemdas ("(1+1)")))
Assert isEqual(6, (Pemdas pemdas ("(3*2)")))
Assert isEqual(101, (Pemdas pemdas ("( 1 + ( ( 2 + 3 ) * (4 * 5) ) )")))
Assert isEqual(5, (Pemdas pemdas ("( 5 ( 4 ( 3 ( 2 ( 1 * 9 ) / 8 - 7 ) + 6 ) ) )")))

Assert isEqual("Invalid record error", (Pemdas pemdas ("1+1")))
Assert isEqual("Invalid record error", (Pemdas pemdas ("(1+1")))
Assert isEqual("Invalid record error", (Pemdas pemdas ("(1+1))")))
Assert isEqual("Invalid record error", (Pemdas pemdas ("((1+1)")))
Assert isEqual("Invalid record error", (Pemdas pemdas ("(1+1) + (2+2)")))

"pass"