#!/bin/bash

echo $1

if [ "$1" == "" ]; then
  echo "Fout, missende parameter: $0 <filenaam>"
  exit 1
fi

WIDTH=85

csplit -s -f cmd_ -b %02d.split $1 -z '/^##/' '{*}'
fl=$(ls -1 *.split)
for f in $fl
do
  kop=$(head $f -n 1 |tr [:blank:] ' '| tr [:upper:] [:lower:] | tr -d '.' |  cut -f2 -d\ )
  cat $f | dos2unix -c 7bit | fold -w $WIDTH -s >  ${kop}.cmd
  rm $f
done
#rm -f *.split
