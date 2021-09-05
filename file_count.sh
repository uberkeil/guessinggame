#!/bin/sh
# recursive directory walk

loop() {
    for i in *
    do 
        if [ -d "$i" ]
        then
            dir=$((dir+1))
            cd "$i"
            loop
        else
            file=$((file+1))
        fi
    done
    cd ..
}
loop
echo dirs: $dir, files: $file
