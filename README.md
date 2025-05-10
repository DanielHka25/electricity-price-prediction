# <font color="SlateBlue">Electricity Price Prediction</font>

This project is part of a university course and focuses on predicting electricity prices using Python and Jupyter Notebooks. The project covers the analysis of hourly EPEX SPOT day-ahead prices for Germany. After a data analysis, several machine learning and time series models, including SARIMA, Prophet, XGBoost, LSTM are trained, evaluated and finally compared.

---

## <font color="SlateBlue">Table of Contents</font>

- [ ] add list with links to the topics

The structure of the Python Jupyter Notebook is as follows:

1. Importing Libraries
2. Loading the Data
3. Merging the Data Frames
4. Exploratory Data Analysis (EDA)
5. Data Preparation
6. Feature Engineering
7. Model Training and Prediction
8. Model Evaluation and Comparison
9. Conclusion

---

## <font color="SlateBlue">How to Use</font>


<b>Clone the repository</b>
  ```bash
  git clone https://github.com/DanielHka25/electricity-price-prediction.git
  cd electricity-price-prediction
  ```
<b>Installation of important libraries (with python venv)</b>
1) create a virtual environment, for example:
    ```bash
    python -m venv .venv 
    ```
2) Activate the virtual environment:
    ```bash
    .\.venv\Scripts\activate # windows
    source .venv/bin/activate # MacOS / Linux 
    ```
3) Install the dependencies for this project:
    ```bash
    pip install -r requirements.txt
    ```
<b>Open the Jupyter Notebook</b>
```bash
jupyter notebook
```
Here, you can navigate to /notebooks/price_prediction.ipynb to open the Jupyter Notebook. To see the used data sets, navigate to /data. 

---

## <font color="SlateBlue">Project Structure</font>

This project is organized into several folders and files to ensure a clean and modular structure. Below is a brief overview of its contents:

- **`data/`**: Includes raw data as csv files used for training and testing the models.
- **`notebooks/`**: Includes the Python Jupyter Notebook (TODO: split this into several notebooks?)
- **`requirements.txt`**: A list of dependencies required to run the project.
- **`README.md`**: The documentation and overview of the project.
- **`TODO.md`**: Contains a list of tasks that are yet to be completed.
- **`.gitignore`**: Specifies files and directories to be ignored by Git.

---

## <font color="SlateBlue">Documentation</font>

- [ ] add documentation (is this even needed here?)

---

## <font color="SlateBlue">Used Dataset</font>

- [ ] explain used data set
- The used datasets range from 01.01.2015 (00:00 hours) to 01.01.2025 (00:00 hours).

---

## <font color="SlateBlue">Build Instructions</font>

- [ ] add setup and build instructions ... (this is probably not needed and already covered in the "How to Use" section of this README)

---

## <font color="SlateBlue">Acknowledgements</font>

- [ ] list helpful resources to give credit to
