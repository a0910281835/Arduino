#!bin/bash
a=$(find I2C/I2C.ino | wc -l)
b=2
echo $b
echo $a


if [ "$a" == "$b" ]
then
    echo "it has file"
else
    echo "no have"
fi
