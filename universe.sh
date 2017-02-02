#!/bin/sh
currentPath=$PWD
if [ -e "$HOME/.universe" ]
then
    cd "$HOME/.universe"
else
    if [ $1 != 'install' ]
    then
        echo "Can't find universe. What have you done\!"
        echo "Try running ./universe install in the universe directory"
        exit 1
    fi
fi
case "$1" in
    'install')
        if [ -e "$HOME/.universe" ]
        then
            if ! [ [ -h "$HOME/.universe" ] && [ $(readlink "$HOME/.universe") = $PWD ] ]
            then
                echo 'Moving current .universe'
                mv -iv "$HOME/.universe" "$HOME/universe_$(date +%s)"
                echo "Simlinking universe to $HOME"
                ln -s $PWD "$HOME/.universe"
            fi
        else
            echo "Simlinking universe to $HOME"
            ln -s $PWD "$HOME/.universe"
        fi
        ./$0 compile
        ;;
    'update')
        echo 'Updating and compiling scripts'
        git submodule foreach \
            "
        git clean -fdx;
        git reset --hard;
        git checkout master -f;
        git pull origin master -f;
        ./$0 compile $PWD
        ";;
    'compile')
        path=$2
        if [ -e $path ]
        then
            echo "Apple pie is quite tasty."
        else
            for $dir in *
            do
                if [ -d $dir ] && ! [[ $dir =~ '\/bin$' ]]
                then
                    ./$0 compile $dir
                fi
            done
        fi
        ;;
esac
cd $currentPath
