#!/bin/bash
log=text.txt

print(){
    echo "output0" 1>&2
    echo "output1" 1>&2
    echo "output2"
    echo "output3" 1>&2
}

$log+=date
$log+= echo "Generating output... $(print)"
result=$(sudo apt install htop) 
$log+= result
echo $log