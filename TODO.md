# <font color="MediumSeaGreen">TODOs</font>

## DATA / FEATURES
- [ ] get new data sets for new features (weather data, load forecast, ...)
- [ ] include holidays for germany (holidays-package)
- [ ] add some kind of rolling statistics to XGBoost
- [ ] maybe do one-hot-encoding if needed? -> test if this gets better performance on each model
- [ ] maybe do semantic transformation if needed? -> test if this gets better performance on each model
- [ ] after the feature engineering, print the final data matrix (with normalized/scaled values) that is put into the models


---

## EDA
- [ ] EDA (use whole data set for this before splitting into test/train data):
    - overview over whole data set (where does the data start and end? how often does data change? what are the data types?)
    - data quality (are there missing values / duplicates?) 
    - plot electricity price (trends? What are daily/weekly/yearly patterns? where are peaks/lows and why?)
    - Boxplot for hour/day/weekday/month (typical price throughout the day, ...)
    - correlation matrix for electricity price with each feature used
    - scatter plot for price and demand
    - average Price for each year

---

## MODEL TRAINING / EVALUATION
- [ ] train and compare new models (SARIMA, Prophet, LSTM)


---

## <font color="Tomato">The TODOs listed here will be gradually integrated into the jupyter notebook</font>