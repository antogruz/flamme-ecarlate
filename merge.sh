#!/bin/bash

function main {
    generate "reglesCoureursDeLegende.md" legendes/fr
    generate "rulesLegendaryRiders.md" legendes/en

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
