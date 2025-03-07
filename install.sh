sudo apt-get update
sudo apt-get install -y liblapack-dev libblas-dev gfortran libfreetype6-dev libopenblas-base libopenmpi-dev libjpeg-dev zlib1g-dev

pip install -r requirements.txt

wget https://nvidia.box.com/shared/static/fjtbno0vpo676a25cgvuqc1wty0fkkg6.whl -O torch-1.10.0-cp36-cp36m-linux_aarch64.whl
pip install torch-1.10.0-cp36-cp36m-linux_aarch64.whl

wget https://github.com/pytorch/vision/archive/refs/tags/v0.11.1.tar.gz -O torchvision-0.11.1.tar.gz

mkdir -p torchvision && tar -xzf "torchvision-0.11.1.tar.gz" --strip-components=1 -C torchvision

cd torchvision
sudo bash -c "source $HOME/python/bin/activate && python setup.py install"