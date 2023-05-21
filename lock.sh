#!/bin/bash

scrot -b ~/screen.jpg
convert ~/screen.jpg -blur 15x5 ~/blurred.png
rm ~/screen.jpg
i3lock -i ~/blurred.png
rm ~/blurred.png
