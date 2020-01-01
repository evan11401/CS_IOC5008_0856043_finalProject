import pandas as pd
data_num = 0
df1 = pd.read_csv('submission_{0}1.csv'.format(data_num))
df2 = pd.read_csv('submission_{0}2.csv'.format(data_num))
finaldf = pd.concat([df1, df2])
print(finaldf.shape)
finaldf.to_csv('submission_{0}.csv'.format(data_num), index=False)
