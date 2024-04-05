main :: IO()
main = do

    print $ getVolumes [(5, 10), (5, 2), (2, 10), (2, 5)] == [785.4, 157.08, 125.66, 62.83]

type Cylinder = (Double, Double)

getVolumes :: [Cylinder] -> [Double]
getVolumes cylinders = map helper cylinders
  where
    helper (r, h) = roundTwoDig(3.141592 * r^2 * h)

roundTwoDig :: Double -> Double
roundTwoDig n = (fromIntegral $ round $ n * 100) / 100