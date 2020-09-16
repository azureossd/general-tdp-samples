#!/bin/bash
counter=1
while [ $counter -le 100000 ]

do
    fallocate -l 1G test.img > /dev/null
    echo "Ping ($counter)"
    counter=$(( $counter + 1 ))
done

echo All done