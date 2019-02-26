#! /usr/bin/lua
-- Hey here is just a short example of lua manipulating files
-- Different ways to work with files
-- r: Read only
-- w: Overwrite or create a new file
-- r+: Read & write existing file
-- W+: Overwrite read or create file
-- a+: Append read or create file

file = io.open("test.log", "a+")
mind = ""
io.write("What's on your mind: ")
mind = io.read()

file:write(os.date(), " - Answer: ", mind, "\n")

file:seek("set", 0)

print (file:read("*a"))

file:close()

os.rename("*.1", "*.2")

--
--
--	EOF
--
--
