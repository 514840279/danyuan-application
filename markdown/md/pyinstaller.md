创建 py35环境
conda create -n py35 python=3.5
conda activate py35
安装库
conda install -y requests 
conda install -y numpy
conda install -y pyaudio
conda install -y pywin32
conda install -y psutil
pip install pyqt5

cd /
python main.pyw

pip install --upgrade pip

打包
conda install -y pyinstaller
--rename main.pyw to main.py
mv main.pyw main.py
pyinstaller -w -F main.py
