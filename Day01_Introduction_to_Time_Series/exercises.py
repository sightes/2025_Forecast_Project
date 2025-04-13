"""
Day 01: Introduction to Time Series - Exercises
"""

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from datetime import datetime, timedelta
from statsmodels.tsa.seasonal import seasonal_decompose
from statsmodels.tsa.stattools import adfuller

# Exercise 1: Create a Time Series with Multiple Components
def create_complex_time_series():
    """
    Create a time series with the following components:
    - Linear trend
    - Monthly seasonality
    - Weekly seasonality
    - Random noise
    
    Returns:
        pd.Series: Time series with datetime index
    """
    # Your code here
    pass

# Exercise 2: Decompose Time Series
def decompose_series(series):
    """
    Decompose a time series into trend, seasonal, and residual components.
    
    Args:
        series (pd.Series): Input time series
        
    Returns:
        tuple: (trend, seasonal, residual)
    """
    # Your code here
    pass

# Exercise 3: Check Stationarity
def check_stationarity(series):
    """
    Check if a time series is stationary using the Augmented Dickey-Fuller test.
    
    Args:
        series (pd.Series): Input time series
        
    Returns:
        bool: True if stationary, False otherwise
    """
    # Your code here
    pass

# Exercise 4: Visualize Components
def plot_components(series, trend, seasonal, residual):
    """
    Create a subplot with all components of the time series.
    
    Args:
        series (pd.Series): Original time series
        trend (pd.Series): Trend component
        seasonal (pd.Series): Seasonal component
        residual (pd.Series): Residual component
    """
    # Your code here
    pass

# Test your solutions
if __name__ == "__main__":
    # Create test data
    dates = pd.date_range(start='2023-01-01', periods=365, freq='D')
    test_series = create_complex_time_series()
    
    # Decompose
    trend, seasonal, residual = decompose_series(test_series)
    
    # Check stationarity
    is_stationary = check_stationarity(test_series)
    print(f"Is the series stationary? {is_stationary}")
    
    # Plot components
    plot_components(test_series, trend, seasonal, residual) 