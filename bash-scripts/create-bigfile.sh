#!/bin/bash
counter=1
while [ $counter -le 100 ]

do
fallocate -l 50M test.img > /dev/null
echo "Ping ($counter)"
((counter++))
done
echo All done