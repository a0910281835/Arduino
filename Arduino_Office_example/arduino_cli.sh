#!bin/sh
# the batch file be used to fastly compile and upload code to arduino.
# Mark : when you bath this file , remeber the code must be in this folder and you need to add the folder name. such as below
# example : sh arduino_cli.sh 'foldername'
CRTDIR=$(pwd)
echo "argc: $#"
echo "argv 1: $1"
echo "argv 2: $2"
echo "argv 3: $3"
sudo chmod a+rw /dev/ttyACM0
sudo arduino-cli compile -b arduino:avr:uno  $CRTDIR/$1/$1.ino -u -p /dev/ttyACM0 -v
#sudo arduino-cli compile -b arduino:avr:uno -v $CRTDIR/$1/$1.ino
#sudo arduino-cli upload  $CRTDIR/$1/$1.ino -b arduino:avr:uno -p /dev/ttyACM0 -v

