--Create Square Root Function
sqRoot :: Int->Int
sqRoot x =  round (sqrt(fromIntegral x))


--Calculates factors of n, up to the square root of n, since all prime factors are <= the square root of n
--Checks if prime number, returns last value in list
largestPF :: Int->Int
largestPF n = last([x | x <- [1..sqRoot n], x*x < n, n `mod` x == 0, [m | m <- [1..x], x `mod` m ==0] == [1,x]]) 