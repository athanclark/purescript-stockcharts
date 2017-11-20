module StockCharts.Utils where

import StockCharts.Time (D3Time)
import Prelude


foreign import data Interval :: Type


foreign import timeIntervalBarWidth :: D3Time -> Interval
