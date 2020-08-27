FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04

RUN apt-get  update && \
    apt-get -y install python3 python3-pip libgl1-mesa-glx libsm6 libxext6 libxrender-dev libglib2.0-0 vim && \
    update-alternatives --install /usr/bin/python python /usr/bin/python3.5 3 && pip3 install --upgrade pip 
RUN pip3 install torch==1.0.1 ninja  torchvision==0.2.2 numpy==1.13.3 scipy scikit-image opencv-contrib-python && rm -fr .cache/pip/
RUN apt-get -y install git && git clone https://github.com/cao-cong/RViDeNet.git 
RUN cd /RViDeNet/modules/cc_attention && python setup.py develop 
#RUN cd /RViDeNet/modules/DCNv2 && python setup.py develop  
RUN echo "/data/modules/DCNv2" > /usr/local/lib/python3.5/dist-packages/DCNv2.egg-link  && echo "/data/modules/DCNv2" >> /usr/local/lib/python3.5/dist-packages/easy-install.pth

#launch with nvidia-docker run   -v /home/facciolo/RViDeNet/:/data --rm -ti rvidenet
