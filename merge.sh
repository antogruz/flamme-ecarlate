#!/bin/bash

function main {
    fr="reglesCoureursDeLegende.md"
    en="rulesLegendaryRiders.md"
    generate $fr legendes/fr
    generate $en legendes/en
    cat $fr $en > README.md
}

function generate {
    out=$1
    dir=$2
    rm -f $out
    for f in presentation preparation reglesCourses tour rouleur sprinteur variantes antoine ; do
        cat $dir/$f.md >> $out
    done


}

main $@
