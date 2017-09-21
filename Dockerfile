FROM tensorflow/tensorflow

WORKDIR /root

# nodejs from PPA
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs
RUN apt-get install -y git

# Node-RED
RUN npm install -g --unsafe-perm node-red
RUN npm install -g node-red-contrib-python-function
RUN npm install -g image-downloader
RUN npm install -g co
RUN npm install -g node-chartist

# Keras
RUN pip install keras

# Chainer
RUN pip install chainer
RUN git clone https://github.com/yasunorikudo/chainer-ResNet.git
WORKDIR chainer-ResNet/v2
RUN curl -sO https://www.dropbox.com/s/8snng201nxf1qw9/resnet50.npz
RUN curl -sO https://www.dropbox.com/s/srh8yo3h53od3tf/resnet101.npz
RUN curl -sO https://www.dropbox.com/s/344m52boylu13tf/resnet152.npz

WORKDIR /root
COPY settings.js settings.js
