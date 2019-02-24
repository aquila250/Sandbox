#!/bin/bash
# Prompt
sleep 0.5; clear
echo ""; echo ">>> NOTE: This script is intended to convert music files into a new format using ffmpeg."
echo ""; echo ">>> MAKE SURE !!! You are in the right directory?"
pwd; ls -FA
echo ""; echo ">>> Enter INPUT file type :"; echo "eg: [mp3], [m4a], [flac]"
read input
clear
echo ""; echo ">>> Enter OUTPUT file type :"; echo "eg: [flac]"
read output

# convert files
for a in ./*${input}; do 
  < /dev/null ffmpeg -i "$a" "${a[@]/%${input}/${output}}";
done

# Clean up old files
clear
echo ""; echo ">>> Would you like to clean up the INPUT files?"; echo "[y/n]"
read clean
clear
if [[ "$clean" == "y" ]]; then
  echo ""; echo ">>> K, INPUT files will be cleaned up."
  rm *${input}
else
  echo ""; echo ">>> K, INPUT files will be left."
fi
sleep 2; clear; pwd; ls -FA
: '
# Quick Work
clear; echo ">>> Script modified !!!"; sleep 2
sleep 0.1; mv *${output} ~/Music/FlacAttack/
sleep 0.1; rm -v *${input}
sleep 0.1; cd ~/Music
'
