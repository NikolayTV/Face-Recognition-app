# Simple WebCam Face recognition based on SoTA Insightface recognition model that just works out of the box.
[Insightface](https://github.com/deepinsight/insightface)

# How to install
(Take a note, it is using git lfs for large model files)
* git lfs install
* git clone https://github.com/NikolayTV/Face-Recognition-app
* pip install -r requirements.txt
* Create as many folders with your images as you want in data/People
* Run WebCam.ipynb for WebCam version
* Run VideoWidget.ipynb for inference on Video (set the path to video in input_video_path= variable)