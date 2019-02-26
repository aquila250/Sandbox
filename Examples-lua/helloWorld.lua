#! /usr/bin/lua
--[[ A new program written in lua
  
  Variable Definition
  [type] [Variable_list] = [value_list];
  eg. a, b = 1, 2  ==  a = 1, b = 2

]]

-- Vars
local a, b

-- Initialization
a = 10
b = 30

io.write (
  "Hello world, from ",_VERSION,"!\n\n",
  "It's ", os.date(),
  ", and this program is an example of some lua coding. Its just for fun\n\n",
  "The value of \"a\" is: ", a, "\n",
  "The value of \"b\" is: ", b, "\n\n"
)

-- Swapping Vars
io.write ("Swapping Vars\n\n")
b, a = a, b

io.write (
  "Now, the value of \"a\" is: ", a, "\n",
  "And, the value of \"b\" is: ", b, "\n\n",
  "Ok, Lets try some math stuff:\n\n"
)
io.write (
  "Here is a random number between 1 and 10: ",
  math.random(1,10), "\n\n"
)

io.write (
  "OK. So, here's a guessing game. pick a number between 1 and 10.\n\n",
  "Guess: "
)
repeat
  guess = io.read()

until tonumber(guess) == math.random(1,10)
print("You got it") 














io.write ("\n\n - EOF - \n\n")
-- EOF

