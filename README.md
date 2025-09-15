# <font color="SlateBlue">Forecasting German EPEX Spot Electricity Prices</font>

The **EPEX Spot** (European Power Exchange Spot Market) is a short-term electricity market in Europe, where **hourly electricity prices** are determined for each price zone, such as Germany, based on supply and demand. The system mainly operates through the **Day-Ahead Market**, where electricity is traded one day in advance and prices are set for each hour of the following day.

This university project aims to predict the **German EPEX Spot electricity prices** on an **hourly basis** using Python and Jupyter Notebooks. The objective is to develop a regression model capable of forecasting electricity prices for each full hour (e.g., 01:00, 02:00, ...). It is based on a ten-year dataset of historical data recorded at hourly intervals, ranging from January 2015 to the end of December 2024. 

The notebook follows a **typical machine learning workflow** and common best practices. Each individual step is thoroughly documented by markdown cells and comments in code. Relevant technical terms are explained where necessary to ensure a clear understanding of each process. A dedicated **Exploratory Data Analysis** (EDA) provides deeper insights into the German electricity market in order to gain a sufficient amount of domain knowledge for later feature selection.

We will focus on training an `XGBRegressor` model of the `XGBoost` framework and evaluate it using key metrics like RMSE, MAE and the R² score. This model was initially chosen because it offers a good balance between performance and complexity, and is rather easier to implement and optimize than intensive Deep Learning models. For comparison, a `RandomForestRegressor` from the `scikit-learn` library will also be trained and compared against the `XGBRegressor`.

Finally, notebook concludes with a summary of the project and a discussion of several potential improvements.

## Table of Contents:
*(The numbers correspond to the chapters in the Jupyter Notebook)*

1) Data Integration
2) Merging the DataFrames
3) Adding Time Based Features
4) Exploratory Data Analysis (EDA)
5) Handling Missing Values
6) Adding Lag Features, Rolling Statistics and Handling Outliers
7) Model Training, Prediction and Evaluation
8) Conclusion

---

## <font color="SlateBlue">Project Structure</font>

This project contains the main folders and files as follows:

- **`data/`**: Includes raw data as CSV files used for training and testing the model.
- **`notebooks/`**: Contains the Python Jupyter Notebook.
- **`requirements.txt`**: A list of dependencies required to run the project.
- **`README.md`**: The documentation and overview of the project.

---

## <font color="SlateBlue">How to Use</font>

**Clone the repository**
  ```bash
  git clone https://github.com/DanielHka25/electricity-price-prediction.git
  cd electricity-price-prediction
  ```
**Installation of required libraries (using a Python virtual environment)**
1) Create a virtual environment, for example:
    ```bash
    python -m venv .venv 
    ```
2) Activate the virtual environment:
    ```bash
    .\.venv\Scripts\activate # Windows (cmd)
    source .venv/bin/activate # macOS / Linux 
    ```
3) Install the dependencies for this project:
    ```bash
    pip install -r requirements.txt
    ```
**Open the Jupyter Notebook**
```bash
jupyter notebook
```
This will open the Jupyter Notebook in the default browser. Navigate to `/notebooks/price_prediction.ipynb` to open the Jupyter Notebook. To see the used datasets, check the `/data` folder. 

---

## <font color="SlateBlue">Used Libraries</font>
- `Pandas` (https://pandas.pydata.org/) for data manipulation
- `NumPy` (https://numpy.org/) for numerical operations
- `Matplotlib` (https://matplotlib.org/), `Seaborn` (https://seaborn.pydata.org/) and `Plotly` (https://plotly.com/python/) for data visualization
- `XGBoost` (https://xgboost.readthedocs.io/) for the XGBRegressor model
- `Scikit-learn` (https://scikit-learn.org/) for data splitting and model evaluation metrics
- `Holidays` (https://pypi.org/project/holidays/) for including German holidays

---

## <font color="SlateBlue">Used Datasets</font>
This project is based on publicly available datasets from `Ember` and `Bundesnetzagentur | SMARD.de`. Note that both SMARD datasets were each created by merging two separate CSV files: one covering the period from 2015 to October 2018, and another from October 2018 to 2025. This was necessary due to the introduction of the new DE-LU bidding zone in October 2018, which replaced the previous Germany-Austria (DE-AT) bidding zone. However, **no changes were made to the raw data files** themselves.

`data/germany_epex_spot.csv`
- Source: https://ember-energy.org/data/european-wholesale-electricity-price-data/
- License: CC BY 4.0 https://creativecommons.org/licenses/by/4.0/
- Attribution: *Ember*

`data/energy_consumption_forecast.csv`
- Source: https://www.smard.de/home/downloadcenter/download-marktdaten/
- License: CC BY 4.0 https://creativecommons.org/licenses/by/4.0/
- Attribution: *Bundesnetzagentur | SMARD.de*

`data/power_generation_forecast.csv`
- Source: https://www.smard.de/home/downloadcenter/download-marktdaten/
- License: CC BY 4.0 https://creativecommons.org/licenses/by/4.0/
- Attribution: *Bundesnetzagentur | SMARD.de*

---


## <font color="SlateBlue">Acknowledgements</font>
Here are some helpful resources that help understanding key concepts discussed in this project:
- Power Market Information (https://www.epexspot.com/en/basicspowermarket)
- Residual Load and Net Load (https://www.smard.de/en/204142-204142)
- Plotting with matplotlib (https://matplotlib.org/stable/users/explain/quick_start.html)
- Negative Electricity Prices in Germany (https://www.smard.de/page/en/wiki-article/5884/105426)
- XGBRegressor (https://xgboost.readthedocs.io/en/latest/python/python_api.html)
- Error Metrics (https://help.qlik.com/en-US/cloud-services/Subsystems/Hub/Content/Sense_Hub/AutoML/scoring-regression.htm)
- Comparison of Random Forest and XGBoost (https://www.geeksforgeeks.org/machine-learning/difference-between-random-forest-vs-xgboost/)
- Create line charts with Plotly (https://plotly.com/python/line-charts/)
- Feature Importance (https://builtin.com/data-science/feature-importance)
