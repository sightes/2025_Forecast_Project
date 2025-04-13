"""
Day 01: Introduction to Time Series - Solutions
"""

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from datetime import datetime, timedelta
from statsmodels.tsa.seasonal import seasonal_decompose
from statsmodels.tsa.stattools import adfuller

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
    # Create date range
    dates = pd.date_range(start='2023-01-01', periods=365, freq='D')
    
    # Create linear trend
    trend = np.linspace(0, 10, 365)
    
    # Create monthly seasonality
    monthly_seasonality = 5 * np.sin(2 * np.pi * np.arange(365) / 30)
    
    # Create weekly seasonality
    weekly_seasonality = 2 * np.sin(2 * np.pi * np.arange(365) / 7)
    
    # Create random noise
    noise = np.random.normal(0, 0.5, 365)
    
    # Combine all components
    data = trend + monthly_seasonality + weekly_seasonality + noise
    
    # Create and return Series
    return pd.Series(data, index=dates)

def decompose_series(series):
    """
    Decompose a time series into trend, seasonal, and residual components.
    
    Args:
        series (pd.Series): Input time series
        
    Returns:
        tuple: (trend, seasonal, residual)
    """
    # Perform decomposition
    decomposition = seasonal_decompose(series, period=30)
    
    return decomposition.trend, decomposition.seasonal, decomposition.resid

def check_stationarity(series):
    """
    Check if a time series is stationary using the Augmented Dickey-Fuller test.
    
    Args:
        series (pd.Series): Input time series
        
    Returns:
        bool: True if stationary, False otherwise
    """
    # Perform ADF test
    result = adfuller(series)
    
    # Return True if p-value < 0.05 (stationary)
    return result[1] < 0.05

def plot_components(series, trend, seasonal, residual):
    """
    Create a subplot with all components of the time series.
    
    Args:
        series (pd.Series): Original time series
        trend (pd.Series): Trend component
        seasonal (pd.Series): Seasonal component
        residual (pd.Series): Residual component
    """
    # Create figure with subplots
    fig, (ax1, ax2, ax3, ax4) = plt.subplots(4, 1, figsize=(15, 12))
    
    # Plot original series
    series.plot(ax=ax1)
    ax1.set_title('Original Time Series')
    ax1.grid(True)
    
    # Plot trend
    trend.plot(ax=ax2)
    ax2.set_title('Trend Component')
    ax2.grid(True)
    
    # Plot seasonality
    seasonal.plot(ax=ax3)
    ax3.set_title('Seasonal Component')
    ax3.grid(True)
    
    # Plot residuals
    residual.plot(ax=ax4)
    ax4.set_title('Residual Component')
    ax4.grid(True)
    
    plt.tight_layout()
    plt.show()

# Test the solutions
if __name__ == "__main__":
    # Create test data
    test_series = create_complex_time_series()
    
    # Decompose
    trend, seasonal, residual = decompose_series(test_series)
    
    # Check stationarity
    is_stationary = check_stationarity(test_series)
    print(f"Is the series stationary? {is_stationary}")
    
    # Plot components
    plot_components(test_series, trend, seasonal, residual) 