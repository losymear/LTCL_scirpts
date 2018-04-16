#!/bin/bash
echo 'Make all sh file executable....'
find ./ *.sh  -exec chmod +x {} + 
echo 'Process success'