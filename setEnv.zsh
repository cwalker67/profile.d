#! /bin/zsh

SCRIPTDIR=${0:a:h}
for dir in 'development' 'docker' 'java' 'zsh' 'go'
do
    for zshFile in `find $SCRIPTDIR/$dir -iname "*.zsh"`
    do
        source $zshFile
    done
    for localFile in `find $SCRIPTDIR/$dir -iname "*.local"`
    do
        source $localFile
    done
done

