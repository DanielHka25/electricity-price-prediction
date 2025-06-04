
- Make sure that the model does not use data that it shouldn't know -> it maybe does in floating avg / std / negative price / "price" / "price_eur_per_mwh"
    - how far should lags be behind? Just one timestamp index (=1 hour) or 1 day?
    - "Adding Lag Features" -> maybe remove price_eur_per_mwh instantly after creating the lags. Then always use the lag features (lag_1) to calculate the rolling statistics!
    - Test what features make sense for rolling statistics

- After Training: print out the feature importance
- use Cross validation with TimeSeriesSplit -> ex: for every year one split
- make predictions for specific timestamps (for example any random date or any specific geopolitical date)
- adjust README.md
