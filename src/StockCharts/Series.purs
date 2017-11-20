module StockCharts.Series where

import StockCharts.Utils (Interval)
import Prelude
import React (Event, ReactClass, createElement, ReactElement, ReactProps, ReactState, ReactRefs, ReadOnly, ReadWrite)
import Data.Record.Class (class Subrow)
import Control.Monad.Eff.Uncurried (EffFn1)
import Unsafe.Coerce (unsafeCoerce)


type CandlestickSeriesProps =
  { width :: Interval
  }


foreign import candlestickSeriesImpl :: forall props. ReactClass props


candlestickSeries :: CandlestickSeriesProps -> ReactElement
candlestickSeries p = createElement candlestickSeriesImpl p []
