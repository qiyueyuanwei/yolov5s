from glob import glob
import os


#test_txt = './train.txt'
test_txt = './valid_vis_random.txt'
#path='E:/cars/cars_train/'
path='/workspace/YOLOV5/images/val'
files=os.listdir(path)
line=[]


for img in glob(os.path.join(path, '*.jpg')):
    print(img)
    with open(test_txt,'a') as f:
        f.write('%s\n'%(img))
