#!/bin/bash

out="reglesCoureursDeLegende.md"

cat legendes/presentation legendes/preparation reglesCourses legendes/tour legendes/rouleur legendes/sprinteur > $out

