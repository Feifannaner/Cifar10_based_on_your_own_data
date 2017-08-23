#my files in 0(1-9)directory like dog-1.png. we need to get the class_name in integer such as 1 ,which means the 1 is equal 'dog'
# the format is filename+r+g+b
#python script for converting 32x32 pngs to format
from PIL import Image
import os
from array import *

data = array('B')

for dirname, dirnames, filenames in os.walk('./testbatch'):
    for filename in filenames:
	if filename.endswith('.png'):

	    ################
	    #grab the image#
	    ################

	    im = Image.open(os.path.join(dirname, filename))
	    pix = im.load()
	    #print(os.path.join(dirname, filename))
	    #print(dirname)
	   # print(filename)
	    #print(filename.split('-')[-2])
	    temp = filename.split('-')[-2]
	    if temp == 'face':
		class_name  = 8
		 #print(class_name)
	    elif temp == 'palm':
		class_name = 0
	    elif temp == 'fist':
		class_name = 1
	    elif temp == 'vitory':
		class_name = 2
	    elif temp == 'ok':
		class_name = 3
	    elif temp == 'eight':
		class_name = 5
	    elif temp == 'six':
		class_name = 6
	    elif temp == 'thumb':
		class_name = 4
	    elif temp == 'arm':
		class_name = 7
	    else:
		class_name = 9
	   
	    #store the class name from look at path
	    #class_name = int(os.path.join(dirname).split('/')[-1])
	    #print class_name

	    ###########################
	    #get image into byte array#
	    ###########################

	    # create array of bytes to hold stuff

	    #first append the class_name byte
	    data.append(class_name)

	    #then write the rows
	    #Extract RGB from pixels and append
	    #note: first we get red channel, then green then blue
	    #note: no delimeters, just append for all images in the set
	    for color in range(0,3):
		for x in range(0,32):
		    for y in range(0,32):
			data.append(pix[x,y][color])
			#print ('finished!',filename)

            #print ('finished!',filename)
############################################
#write all to binary, all set for cifar10!!#
############################################

output_file = open('test_batch.bin', 'wb')
data.tofile(output_file)
output_file.close()

