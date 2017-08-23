# my camera is 30fps, so i will collect the data in a fast speed.
#if you want to change the time just to time.sleep(0.2) in while
#when the camera collect 6200 ,it will exit.
#amount of one kind of gesture in cifar10 will be 6000
# i add addtional 200 to screen out the best
#take care of the size(32*4),yeah you konw the reason!

import cv2 
import time

cv2.namedWindow('Camera',cv2.WINDOW_NORMAL)
capture = cv2.VideoCapture(0)
i = 0
ret = capture.set(3,32*4)
ret = capture.set(4,32*4)
#success,frame = capture.read();
while True:
#	capture = cv2.VideoCapture(0)
	ret,frame = capture.read()
	frame = cv2.flip(frame,1)
	cv2.imshow('Camera',frame)
	#key  = cv2.waitKey(10) & 0xff
	#cv2.imshow('camera',frame)
	cv2.imwrite('face-{:>05}.png'.format(i),frame)
	i+=1
	if i ==6200:
		break
	key = cv2.waitKey(10) & 0xff
	if key == ord('q'):
		break
capture.release()
cv2.destroyAllWindows()
