#!/bin/bash

for i in {1..4}; do
    #Original line
    #value=$(docker container exec h$i cat simplemr_examples.log | grep "REDUCER ID" | tail -n 1 | sed 's/.*\(REDUCER ID:\)\(.\)/\2/');

    #Changed line - still not sure which number we want to extract from this line.
    value=$(docker container exec h$i cat simplemr_examples.log |grep "REDUCER ID" |tail -n 1 | sed 's/.*\(..\)/\1/');

    let "value=value+12";
    echo $value;
done

