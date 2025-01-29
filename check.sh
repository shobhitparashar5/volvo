#!/bin/bash

echo "press 1 to scanning"
echo "press 2 to phishing"
echo "press 3 bombing attack"
echo "press Q to exit"

echo -n "Chose :"
read x

if [ $x == 1 ]; then
echo  "you selected 1st option"

elif [ $x == 2 ]; then
echo "you selected 1st option"

elif [ $x == 3 ]; then
  echo "you selected 3rd option"

elif [ $x == 'q' ]; then
  exit

else
   "you selected wrong option"
fi

