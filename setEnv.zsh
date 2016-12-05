#! /bin/zsh

SCRIPTDIR=${0:a:h}
for dir in 'development' 'docker' 'java' 'zsh'
do
   echo $dir

    for file in `find $SCRIPTDIR/$dir -iname "*.zsh"`
    do
        source $file
    done
done
