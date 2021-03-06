-- Given a and m, return Just x such that ax = 1 mod m.
-- If there is no such x return Nothing.
modInv :: Int -> Int -> String
modInv a m
  | 1 == g = show (mkPos i)
  | otherwise = "No such integer exists."
  where
    (i, _, g) = gcdExt a m
    mkPos x
      | x < 0 = x + m
      | otherwise = x
 
-- Extended Euclidean algorithm.
-- Given non-negative a and b, return x, y and g
-- such that ax + by = g, where g = gcd(a,b).
-- Note that x or y may be negative.
gcdExt :: Int -> Int -> (Int, Int, Int)
gcdExt a 0 = (1, 0, a)
gcdExt a b =
  let (q, r) = a `quotRem` b
      (s, t, g) = gcdExt b r
  in (t, s - q * t, g)
 
main :: IO ()
main = do
  x <- read <$> getLine :: IO Int
  y <- read <$> getLine :: IO Int
  putStrLn $ modInv x y
