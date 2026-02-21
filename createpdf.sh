#! /usr/bin/bash

IFS=
list_of_cbr=($(ls *.cbr))


for file in *.cbr;
do
    name=${file%.cbr}
    echo ${name}

    mkdir ${name}
    pushd ${name}
    result=$(rar x ../${file})
    echo ${result}
    $(convert *.jpg ${name}.pdf)
    $(ls)
    popd
done
