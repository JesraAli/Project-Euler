--What is the value of the first triangle number to have over five hundred divisors?

triangle :: Int
triangle = findDivisors (triangleNum 1) 1 --Find divisors of the first triangle number ... onwards..
    where 
        findDivisors :: Int->Int->Int
        findDivisors n x
            | numFactors n > 500 = n
            | otherwise = findDivisors (triangleNum (x+1)) (x+1)

        numFactors :: Int->Int
        numFactors n = length[x | x <- [1..n], n `mod` x == 0]

        triangleNum :: Int -> Int
        triangleNum n 
                    | n <= 0 = 0
                    | otherwise = n + triangleNum(n-1)
