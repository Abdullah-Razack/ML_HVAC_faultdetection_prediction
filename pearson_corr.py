# import libraries
import pandas as pd
import numpy
import math
import matplotlib.pyplot as plt
import seaborn as sns

# import dataframe 

df=pd.read_csv("C:/Users/abdul/Documents/database/database_jack_02.csv")

# Create the correlation matrix (note: in this step you can change the method to Pearson, Kendall or Spearman)

matrix_correlacao_pearson=round(df.corr(method="pearson"),2)

# visualization of correlation matrix 

sns.heatmap(matrix_correlacao_pearson, annot=False, vmin=-1, center=0, cmap='vlag')

plt.show()