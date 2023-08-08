#! /bin/bash
if ! grep Font "$1"
then
     #echo "This file needs to be OCRd"
     echo "false"
else
     #echo "This file does not need to be OCRd"
     echo "true"
fi