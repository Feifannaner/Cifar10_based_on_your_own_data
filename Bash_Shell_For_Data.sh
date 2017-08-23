format #! /bin/bash  
```
#! /bin/bash
# for rename files and  to another diretory 
a=1
for files in ../*.png; do
    new=${print 'dog-%5d.png' $a}
    mv -i -- "$files" ./"$new"
done
```
```
#!/bin/bash

#simple script for resizing images in all class directories
#also reformats everything from whatever to png

if [ `ls classes/*/*.jpg 2> /dev/null | wc -l ` -gt 0 ]; then
  for file in classes/*/*.jpg; do
    convert "$file" -resize 32x32\! "${file%.*}.png"
    file "$file" #uncomment for testing
    rm "$file"
  done
fi

if [ `ls classes/*/*.png 2> /dev/null | wc -l ` -gt 0 ]; then
  for file in classes/*/*.png; do
    convert "$file" -resize 32x32\! "${file%.*}.png"
    file "$file" #uncomment for testing
  done
fi
```
```
#! /bin/bash
# convert jpg to png files
for jpgName in ./52/*.jpg;do
convert "$jpgName" ${jpgName%.*}.png
done
```
# this script for ramdom to choose files in 10 directories to construct the batches png files
mkdir batch1
mkdir batch2
mkdir batch3
mkdir batch4
mkdir batch5
mkdir testbatch

shuf -n 1000 -e ./0/* | xargs -i mv {} ./batch1
shuf -n 1000 -e ./0/* | xargs -i mv {} ./batch2
shuf -n 1000 -e ./0/* | xargs -i mv {} ./batch3
shuf -n 1000 -e ./0/* | xargs -i mv {} ./batch4
shuf -n 1000 -e ./0/* | xargs -i mv {} ./batch5
shuf -n 1000 -e ./0/* | xargs -i mv {} ./testbatch


shuf -n 1000 -e ./1/* | xargs -i mv {} ./batch1
shuf -n 1000 -e ./1/* | xargs -i mv {} ./batch2
shuf -n 1000 -e ./1/* | xargs -i mv {} ./batch3
shuf -n 1000 -e ./1/* | xargs -i mv {} ./batch4
shuf -n 1000 -e ./1/* | xargs -i mv {} ./batch5
shuf -n 1000 -e ./1/* | xargs -i mv {} ./testbatch

shuf -n 1000 -e ./2/* | xargs -i mv {} ./batch1
shuf -n 1000 -e ./2/* | xargs -i mv {} ./batch2
shuf -n 1000 -e ./2/* | xargs -i mv {} ./batch3
shuf -n 1000 -e ./2/* | xargs -i mv {} ./batch4
shuf -n 1000 -e ./2/* | xargs -i mv {} ./batch5
shuf -n 1000 -e ./2/* | xargs -i mv {} ./testbatch


shuf -n 1000 -e ./3/* | xargs -i mv {} ./batch1
shuf -n 1000 -e ./3/* | xargs -i mv {} ./batch2
shuf -n 1000 -e ./3/* | xargs -i mv {} ./batch3
shuf -n 1000 -e ./3/* | xargs -i mv {} ./batch4
shuf -n 1000 -e ./3/* | xargs -i mv {} ./batch5
shuf -n 1000 -e ./3/* | xargs -i mv {} ./testbatch


shuf -n 1000 -e ./4/* | xargs -i mv {} ./batch1
shuf -n 1000 -e ./4/* | xargs -i mv {} ./batch2
shuf -n 1000 -e ./4/* | xargs -i mv {} ./batch3
shuf -n 1000 -e ./4/* | xargs -i mv {} ./batch4
shuf -n 1000 -e ./4/* | xargs -i mv {} ./batch5
shuf -n 1000 -e ./4/* | xargs -i mv {} ./testbatch

shuf -n 1000 -e ./5/* | xargs -i mv {} ./batch1
shuf -n 1000 -e ./5/* | xargs -i mv {} ./batch2
shuf -n 1000 -e ./5/* | xargs -i mv {} ./batch3
shuf -n 1000 -e ./5/* | xargs -i mv {} ./batch4
shuf -n 1000 -e ./5/* | xargs -i mv {} ./batch5
shuf -n 1000 -e ./5/* | xargs -i mv {} ./testbatch

shuf -n 1000 -e ./6/* | xargs -i mv {} ./batch1
shuf -n 1000 -e ./6/* | xargs -i mv {} ./batch2
shuf -n 1000 -e ./6/* | xargs -i mv {} ./batch3
shuf -n 1000 -e ./6/* | xargs -i mv {} ./batch4
shuf -n 1000 -e ./6/* | xargs -i mv {} ./batch5
shuf -n 1000 -e ./6/* | xargs -i mv {} ./testbatch

shuf -n 1000 -e ./7/* | xargs -i mv {} ./batch1
shuf -n 1000 -e ./7/* | xargs -i mv {} ./batch2
shuf -n 1000 -e ./7/* | xargs -i mv {} ./batch3
shuf -n 1000 -e ./7/* | xargs -i mv {} ./batch4
shuf -n 1000 -e ./7/* | xargs -i mv {} ./batch5
shuf -n 1000 -e ./7/* | xargs -i mv {} ./testbatch

shuf -n 1000 -e ./8/* | xargs -i mv {} ./batch1
shuf -n 1000 -e ./8/* | xargs -i mv {} ./batch2
shuf -n 1000 -e ./8/* | xargs -i mv {} ./batch3
shuf -n 1000 -e ./8/* | xargs -i mv {} ./batch4
shuf -n 1000 -e ./8/* | xargs -i mv {} ./batch5
shuf -n 1000 -e ./8/* | xargs -i mv {} ./testbatch

shuf -n 1000 -e ./9/* | xargs -i mv {} ./batch1
shuf -n 1000 -e ./9/* | xargs -i mv {} ./batch2
shuf -n 1000 -e ./9/* | xargs -i mv {} ./batch3
shuf -n 1000 -e ./9/* | xargs -i mv {} ./batch4
shuf -n 1000 -e ./9/* | xargs -i mv {} ./batch5
shuf -n 1000 -e ./9/* | xargs -i mv {} ./testbatch


