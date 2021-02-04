#!/bin/bash

out="reglesCoureursDeLegende.md"
rm $out

for f in presentation preparation reglesCourses tour rouleur sprinteur ; do
    cat legendes/fr/$f.md >> $out
done

