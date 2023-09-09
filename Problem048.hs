--The series, 1^1 + 2^2 + 3^3 +...+ 10^10 = 10405071317.
--Find the last ten digits of the series, 
--1^1 + 2^2 + 3^3 +...+ 1000^1000. 

series :: Integer->[Char]
series n = reverse (take 10((reverseInt(sum(zipWith (^) [1..n] [1..n])))))

reverseInt :: Integer->[Char]
reverseInt = reverse.show

-- getDigits :: [Char]->[Char]
-- getDigits = take 10


-- getDigits :: [Char]->[Char]
-- getDigits = read.reverse.take 10.show

