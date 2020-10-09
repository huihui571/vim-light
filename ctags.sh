#------------------------------------------------------------------
#v1:2019.10.14   create files
#v2:2020.10.8    add help info and update ctags cmd
#------------------------------------------------------------------

#update for universal ctags
function buildctags() {
    rm -f tags
    echo "old tags files removed, tags building..."
    ctags -R --c-kinds=+px --c++-kinds=+px --fields=+nilazS --extras=+q --excmd=pattern --exclude=Makefile --exclude=.
}

function buildcscope() {
    rm -f cscope.*
    echo "old cscope files removed, cscope building..."
    find -name "*.py" -o -name "*.[ch]" -o -name "*.[ch]pp" > cscope.files
    if [ "$1" == "-q" ]; then
        cscope -Rbqk
    else
        cscope -Rbk
    fi
    rm cscope.files
}

if [ "$1" == "" ]; then
    cmd="-t"
else
    cmd=$1
fi

echo "use cmd ${cmd} $2..."
if [ "${cmd}" == "-t" ]; then
    buildctags
    echo "build ctags comlpete!"
elif [ "${cmd}" == "-s" ]; then
    buildcscope $2
    echo "build cscopes complete!"
elif [ "${cmd}" == "-a" ]; then
    buildctags
    buildcscope $2
    echo "build cscopes and ctags complete!"
elif [ "${cmd}" == "-c" ]; then
    rm -f tags cscope.*
    echo "all tags files cleared!"
elif [ "${cmd}" == "-h" ]; then
    echo "first args: 
    -t : ctags(default)
    -s : cscope
    -a : both ctags and cscope
    -c : clear all tags
    -h : for help info"
    echo "second args: 
    -q : cscope quick files"
fi
