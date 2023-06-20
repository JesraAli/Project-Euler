sumOfSquares :: Int -> Int
sumOfSquares x =  sum (map(^2) [1..x])

squareOfSum :: Int -> Int
squareOfSum x = sum [1..x] ^2

difference :: Int->Int
difference x = squareOfSum x - sumOfSquares x