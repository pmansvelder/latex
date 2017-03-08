#!/bin/bash
sed 's/[ \t]*$//g ; s/\(\w*\)\ \(.*\)/\\newcommand{\\\1}{{\2}}/' $1 > $2
