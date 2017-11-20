module StockCharts.Scales where

import Control.Monad.Eff (Eff, kind Effect)



foreign import data D3Scale :: Type

foreign import data SCALE :: Effect


foreign import scaleLinear :: forall eff. Eff (scale :: SCALE | eff) D3Scale
foreign import scaleTime :: forall eff. Eff (scale :: SCALE | eff) D3Scale
