import numpy as np
import cv2

mat = np.zeros((400,400))

for kx in range(0,4,1):
	for ky in range(0,4,1) :
		for jx in range(100*kx,100*kx+50,1):
			for jy in range(100*ky,100*ky+50,1):
				mat[100*kx:100*kx+50,100*ky:100*ky+50]=255

for kx in range(4,0,-1):
	for ky in range(4,0,-1) :
		for jx in range(100*kx,100*kx-50,-1):
			for jy in range(100*ky,100*ky-50,-1):
				mat[100*kx-50:100*kx,100*ky-50:100*ky]=255


cv2.imwrite('chessboard.png',mat)
cv2.imshow("second",mat)
cv2.waitKey(0)

cv2.destroyAllwindows

		
