#!/bin/bash
val="this is a variable value"
echo "hello world!!"
echo ${val}
echo "val = \"${val}\""
test="testing"
if [[ -z $test ]]
then
  echo "variable exists"
  # echo "variable not exists"
else
  echo "variable doesn't exist"
fi


echo $*
echo $?