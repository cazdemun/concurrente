// active proctype P() {
//     byte a = 10
//     byte b = 20

//     assert(a + b == 1)
// }

active proctype P() {
    byte dividendo = 100
    byte divisor = 13
    byte cociente = 0
    byte residuo = dividendo
    
    do
    :: residuo > divisor ->
        cociente++
        residuo = residuo - divisor
    :: else -> break
    od
    // this proccess follows a lineal state
    assert(cociente * divisor + residuo == dividendo)
}

// active proctype P() {
//     byte a = 5
//     byte b = 5
//     byte max
    
//     // if both conditions are true, one is picked randomly
//     if
//     :: a >= b -> max = a
//     :: b >= a -> max = b + 1
//     fi

//     // if
//     // :: (a >= b) 
//     //        max = a
//     // :: (b >= a)
//     //        max = b + 1
//     // fi

//     // in this case (i don't know why) assert wont work everytime
//     // this case is not deterministic (line 29 +-)
//     assert(a >=b -> max == a : max == b)
// }

// spin uses promela to generate a random path from a state diagram 

// assert -t filename uses the verification file generated before to evaluate the trail

// spin -i interactive?