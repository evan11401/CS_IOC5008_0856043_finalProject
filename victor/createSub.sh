#python merge_oof.py
#python merge_test.py
#python train_classifier_lgbm.py
python create_submissions_lgbm.py --data_num 1 --test_fold merged_test
python create_submissions_lgbm.py --data_num 2 --test_fold merged_test

