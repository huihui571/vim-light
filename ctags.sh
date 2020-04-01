echo "rm all tags files..."
rm -f tags cscope.*

function buildctags() {
    ctags -R --c++-kinds=+px --fields=+ilaS --extra=+q
}

function buildcscope() {
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
fi
