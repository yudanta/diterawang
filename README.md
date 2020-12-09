# Diterawang, yet another image classification api
## Stacks 
- Pytorch 
- flask
- gunicorn

## Model 
- densenet121, pretrained model on ImageNet dataset
- ImageNet class data category

## to run this project or to deploy with docker

### clone to your local directory
```
git clone https://github.com/yudanta/diterawang.git
```
### local via venv 
```
# create virtual env 
python3 -m venv diterawang

cd diterawang

# activate venv 
source bin/activate 

# install dependency 
pip install -r requirements.txt

# run directly using python3 
python3 run.py

# run from gunicorn 
gunicorn app:app 
```

### via docker-compose
```
docker-compose up --build
```


## testing via curl command
there are several images for testing purpose inside test_img directory, to perform classification request using curl command:
```
curl -X POST -H "Content-Type: multipart/form-data" http://localhost:8000/predict -F "file=@test_img/cat_1.jpg"  > cat.json
```


## Online Demo
atau bisa dicoba juga sih di heroku, sila menuju ke: https://diterawang.herokuapp.com

