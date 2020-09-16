#!/bin/bash
counter=1
while [ $counter -le 100 ]

do
    fallocate -l 100M test.img > /dev/null
    echo "Ping ($counter)"
    counter=$(( $counter + 1 ))
done

echo All done