from __future__ import print_function
import cv2
 
img = cv2.imread('./koishi.jpg', cv2.IMREAD_GRAYSCALE)
img = cv2.resize(img, (128, 128))
cv2.imshow('image', img)
cv2.waitKey(0)
cv2.destroyAllWindows()

(width, height) = img.shape
for i in range(0, height):
    for j in range(0, width):
        if img[i][j] < 235:
            print('#', end='')
        else:
            print(' ', end='')
    print('\n', end='')
