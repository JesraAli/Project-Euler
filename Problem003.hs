--FIRST TRY:
--Prime == divisible by by 1 and itself
-- Want to find all the numbers in a number that are prime


-- factors :: Int->[Int]
-- factors n = [x | x <- [1..n], n `mod` x == 0]

-- prime :: Int->Bool
-- prime x = factors x == [1,x]

-- primeFactors :: Int -> [Int]
-- primeFactors n = last([x | x <- [1..n], n `mod` x == 0 && prime x == True])


--SECOND TRY:
--largestPF :: Int -> Int
--largestPF n = last([x | x <- [1..n], n `mod` x == 0 && factors x == [1,x]])



--THIRD TRY:
--factors :: Int->[Int]
--factors n = [x | x <- [1..n], n `mod` x == 0, [m | m <- [1..x], x `mod` m ==0] == [1,x]]


--largestPF :: Int -> Int
--largestPF n = last(factors n)



--FOURTH TRY:
sqRoot :: Int->Int
sqRoot x =  round (sqrt(fromIntegral x))


largestPF :: Int->Int
largestPF n = last([x | x <- [1..sqRoot n], x*x < n, n `mod` x == 0, [m | m <- [1..x], x `mod` m ==0] == [1,x]]) 

--largestPF n = last([x | x <- [1..n], x*x<n && (n `mod` x == 0) && [m | m <- [1..x], x `mod` m ==0] == [1,x]])

