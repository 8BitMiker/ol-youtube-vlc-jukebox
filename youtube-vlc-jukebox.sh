#!/bin/bash

# Note the VLC link will most likely be different on your system
# You can also put the folder of VLC into your $PATH environment variable

lynx --nonumbers --dump https://www.youtube.com/playlist?list=PL24A074298DD010E3 | pcregrep -o 'https://www\.youtube\.com/watch\?v=\w+(?=&index)' | sort -R | uniq | xargs /Applications/VLC.app/Contents/MacOS/VLC --play-and-exit

# To see an explaination of this one liner check out the youtube tutorial @
# https://www.youtube.com/watch?v=4TSsJa0T9Dw

