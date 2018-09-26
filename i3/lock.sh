#!/bin/bash

# from https://gist.github.com/csivanich/10914698

# i3lock blurred screen inspired by /u/patopop007 and the blog post
# http://plankenau.com/blog/post-10/gaussianlock

# Timings are on an Intel i7-2630QM @ 2.00GHz

# Dependencies:
# imagemagick
# i3lock
# maim

IMAGE=/tmp/i3lock.png
SCREENSHOT="maim $IMAGE"

# Alternate screenshot method with imagemagick. NOTE: it is much slower
# SCREENSHOT="import -window root $IMAGE" # 1.35s

# Here are some imagemagick blur types
# Uncomment one to use, if you have multiple, the last one will be used

# All options are here: http://www.imagemagick.org/Usage/blur/#blur_args
#BLURTYPE="0x5" # 7.52s
#BLURTYPE="0x2" # 4.39s
#BLURTYPE="5x2" # 3.80s
BLURTYPE="0x8"
#BLURTYPE="2x8" # 2.90s
#BLURTYPE="2x3" # 2.92s

array[0]="-canny 5x3"
array[1]="-blur $BLURTYPE"
array[2]="-paint 10"
array[3]="-wave 25x15"
array[4]="-spread 2"

size=${#array[@]}
index=$(($RANDOM % $size))

OPTION=${array[$index]}
echo $OPTION

# Get the screenshot, add the blur and lock the screen with it
$SCREENSHOT

convert $OPTION $IMAGE $IMAGE
i3lock -e -f -i $IMAGE
rm $IMAGE

