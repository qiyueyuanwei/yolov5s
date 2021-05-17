FROM pytorch/pytorch:1.7.1-cuda11.0-cudnn8-runtime
COPY ./YOLOV5 /workspace/YOLOV5
WORKDIR /workspace/YOLOV5/yolov5s/data
RUN apt-get update && \
    apt-get install -y vim && \
    apt install -y libgl1-mesa-glx && \
    apt-get install -y libglib2.0-0 libsm6 libxrender1 libxext6
#CMD ['python','trains_path.py']
#CMD [ 'python', 'valid_path.py']
WORKDIR /workspace/YOLOV5/yolov5s
RUN pip install opencv-python -i https://pypi.mirrors.ustc.edu.cn/simple/  && \
    pip install matplotlib -i https://pypi.mirrors.ustc.edu.cn/simple/  && \
    pip install tensorboard -i https://pypi.mirrors.ustc.edu.cn/simple/  && \
    pip install scipy -i https://pypi.mirrors.ustc.edu.cn/simple/  && \
    pip install Cython -i https://pypi.mirrors.ustc.edu.cn/simple/ 
