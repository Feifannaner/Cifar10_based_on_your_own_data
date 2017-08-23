
# WHEN you tap the 'c' key in keyboard it will imwrite one photo
#it will take longer time for your 6000 data
#
import cv2
import time 


cv2.namedWindow('Camera',cv2.WINDOW_NORMAL)
capture = cv2.VideoCapture(0)
if(capture.isOpened()==False):
	print('open camera error!')
	
else:
	print('open sucess!')
i = 0
ret = capture.set(3,100)
ret = capture.set(4,100)
#success,frame = capture.read();
while True:
#	capture = cv2.VideoCapture(0)
	ret,frame = capture.read()
	frame = cv2.flip(frame,1)
	cv2.imshow('Camera',frame)
	key  = cv2.waitKey(10) & 0xff
	if key == ord('c'):
		cv2.imshow('camera',frame)
		cv2.imwrite('pic{:>05}.jpg'.format(i),frame)
		print('saved: {} files'.format(i))
		i+=1
	if key ==27:
		break
capture.release()
cv2.destroyAllWindows()
