module StockCharts where

import StockCharts.Scales (D3Scale)

import Prelude
import React (Event, ReactClass, createElement, ReactElement, ReactProps, ReactState, ReactRefs, ReadOnly, ReadWrite)
import Data.Record.Class (class Subrow)
import Data.Tuple.Native (T2)
import Data.JSDate (JSDate)
import Control.Monad.Eff.Uncurried (EffFn1)



foreign import chartCanvasImpl :: forall props. ReactClass props

newtype CanvasType = CanvasType String

svg :: CanvasType
svg = CanvasType "svg"

hybrid :: CanvasType
hybrid = CanvasType "hybrid"


type ChartCanvasProps d =
  { height :: Int
  , width :: Int
  , ratio :: Number
  , margin :: {left :: Int, right :: Int, top :: Int, bottom :: Int}
  , "type" :: CanvasType
  , seriesName :: String
  , "data" :: Array d
  , xAccessor :: d -> JSDate
  , xScale :: D3Scale
  , xExtents :: T2 JSDate JSDate -- FIXME Just an ord k?
  }

chartCanvas :: forall d. ChartCanvasProps d -> Array ReactElement -> ReactElement
chartCanvas = createElement chartCanvasImpl


foreign import chartImpl :: forall props. ReactClass props


type ChartProps d =
  { id :: Int
  , yExtents :: d -> T2 Number Number
  }


newtype XAxisPosition = XAxisPosition String

bottom :: XAxisPosition
bottom = XAxisPosition "bottom"

top :: XAxisPosition
top = XAxisPosition "top"

type XAxisProps =
  { axisAt :: XAxisPosition
  , orient :: XAxisPosition
  , ticks :: Int
  }

newtype YAxisPosition = YAxisPosition String

left :: YAxisPosition
left = YAxisPosition "left"

right :: YAxisPosition
right = YAxisPosition "right"

type YAxisProps =
  { axisAt :: YAxisPosition
  , orient :: YAxisPosition
  , ticks :: Int
  }

chart :: forall d. ChartProps d -> Array ReactElement -> ReactElement
chart = createElement chartImpl
