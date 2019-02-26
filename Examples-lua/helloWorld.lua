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
  "This program is an example, & just for fun\n\n",
  "The value of \"a\" is: ", a, "\n",
  "The value of \"b\" is: ", b, "\n\n"
)

-- Swapping Vars
io.write ("Swapping Vars\n\n")
b, a = a, b

io.write (
  "Now, the value of \"a\" is: ", a, "\n",
  "And, the value of \"b\" is: ", b, "\n\n",
  "Ok, Lets try loops:\n\n"
)

repeat
exit = false
exit = io.read ())
until ( exit == true )


io.write ("\n\n - EOF - \n\n")
-- EOF

