
- test if dummy variale "new_price_zone" makes prediction better. If yes, keep it, else remove
- do data cleanup (handle missing values and maybe even data plateaus?)
- After Training: print out the feature importance
- use Cross validation with TimeSeriesSplit -> ex: for every year one split
- add MAPE (Mean Absolute Percentage Error)
- Make sure that the model does not use data that it shouldn't know -> it maybe does in floating avg / std / negative price / "price" / "price_eur_per_mwh"
- make predictions for specific timestamps (for example any random date or any specific geopolitical date)
- adjust README.md
- maybe train more more models in an extra chapter without detailed explanation. Then compare them to XGBoost?