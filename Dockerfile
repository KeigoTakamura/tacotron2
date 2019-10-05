FROM rocm/pytorch:rocm2.7_ubuntu16.04_py3.6_pytorch

RUN apt-get update -y

RUN pip install numpy scipy matplotlib librosa==0.6.0 tensorflow  tensorboardX inflect==0.2.5 Unidecode==1.0.22 jupyter

ADD apex /apex/
WORKDIR /apex/
RUN pip install -v --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" .
