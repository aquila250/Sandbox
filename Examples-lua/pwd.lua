#! /usr/bin/lua
os.execute([["for a in ./*tmp; do
             \"$a\" \"${a[@]/%$tmp/tmp2}\";
            done "
]])
--os.rename ("*.tmp", "")
