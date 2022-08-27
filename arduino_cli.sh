#!bin/bash
# the batch file be used to fastly compile and upload code to arduino.
# Mark : when you bath this file , remeber the code must be in this folder and you need to add the folder name. such as below
# example : sh arduino_cli.sh 'foldername'



# Open The permissions for USB
sudo chmod a+rw /dev/ttyACM0

# Declare Variable
CRTDIR=$(pwd)
HAVE=1
echo "argc: $#"
echo "argv 1: $1"
echo "argv 2: $2"
echo "argv 3: $3"
file_pos=$(find $CRTDIR/$1/$1.ino | wc -l)
file_pos2=$(find $CRTDIR/$1/$2.ino | wc -l)
echo $file_pos
echo $file_pos2


# following below 2 statement is compile and upload command
#sudo arduino-cli compile -b arduino:avr:uno -v $CRTDIR/$1/$1.ino
#sudo arduino-cli upload  $CRTDIR/$1/$1.ino -b arduino:avr:uno -p /dev/ttyACM0 -v

sudo arduino-cli compile -b arduino:avr:uno  $CRTDIR/$1/*.ino -u -p /dev/ttyACM0 -v

#if [ "$file_pos" == "$HAVE" ]
#then
#    sudo arduino-cli compile -b arduino:avr:uno  $CRTDIR/$1/$1.ino -u -p /dev/ttyACM0 -v
#elif [ "$file_pos2" == "$HAVE" ]
#then
#    echo "ok"
#    sudo arduino-cli compile -b arduino:avr:uno  $CRTDIR/$1/$2.ino -u -p /dev/ttyACM0 -v
#else
#    echo "nothing"
#fi


