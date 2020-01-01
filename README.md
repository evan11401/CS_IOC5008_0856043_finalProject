# CS_IOC5008_0856043_finalProject

## Environment Setting

##### cuda 10.0(The latest version is cuda 10.1, so maybe you need to downgrade).

##### use ```nvcc --version``` to check

```bash
pip install imgaug
pip install lightgbm
pip install tqdm
#for albu
pip install torch==0.3.1
pip install torchvision==0.2.1
pip install scipy==1.1.0
pip install pandas
pip install tensorboardX
#for victor
pip install tensorflow-gpu==1.15.0
pip install Keras==2.2.4
pip install Keras-Applications==1.0.8
pip install opencv-python==3.4.2.16 
pip install pandas
pip install scikit-learn==0.19
```

## Run the Code
##### Train
```bash
cd albu/src
./train_all.sh
./tune_all.sh
./predict_oof.sh
```
##### Predict
```bash
cd albu/src
./predict_test.sh
python merge_oof.py
python merge_test.py
```
##### Train GBM (LightGBM)
```
cd vicor
python train_classifier_lgbm.py
python create_submissions_lgbm.py --data_num 1 --test_fold merged_test
python create_submissions_lgbm.py --data_num 2 --test_fold merged_test

```
##### Train GBM (XGBoost)
```
cd vicor
python train_classifier_xgboost.py
python create_submissions_xgboost.py --data_num 1 --test_fold merged_test
python create_submissions_xgboost.py --data_num 2 --test_fold merged_test
```
