jarff() {
    LOC=$2
    SEARCH_TERM=$1
    for i in `find $LOC -type f -name "*.jar"`; do
        jar tvf $i | grep $SEARCH_TERM;
        if [ $? -eq 0 ]; then echo $i; fi;
    done
 }
