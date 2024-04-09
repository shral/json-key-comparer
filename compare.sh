#!/bin/sh 

firstFile=$(grep "^FIRST_FILE=" config.env | cut -d '=' -f2)
secondFile=$(grep "^SECOND_FILE=" config.env | cut -d '=' -f2)

node index.js --firstFile=$firstFile --secondFile=$secondFile
