difference ::Int->Int
difference x = squareOfSum - sumOfSquares
                where 
                    sumOfSquares = sum (map(^2) [1..x])
                    squareOfSum = sum [1..x] ^2