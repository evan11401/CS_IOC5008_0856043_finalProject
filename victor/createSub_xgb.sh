#python merge_oof.py
python train_classifier_xgboost.py
python create_submissions_xgboost.py --data_num 1 --test_fold merged_test
python create_submissions_xgboost.py --data_num 2 --test_fold merged_test

