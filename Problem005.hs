

--2520  is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
--What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
 

smallestNum :: Int
smallestNum = findSmallestNum 1
    where
        findSmallestNum n 
            | isDivisible n [2..20]  /= False = n
            | otherwise = findSmallestNum (n+1)


isDivisible:: Int->[Int]->Bool
isDivisible n [] = True
isDivisible n (m:xs) | n `mod` m == 0 = isDivisible n xs
                    | otherwise = False
