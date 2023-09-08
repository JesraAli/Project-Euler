import Data.Char (digitToInt, intToDigit)


callNum ::Int
callNum = sumOfDigits (2^1000) 0

sumOfDigits :: Integer->Int-> Int
sumOfDigits 0 finalSum = finalSum
sumOfDigits n finalSum = finalSum + digitToInt(head (show n) ) + sumOfDigits (foldl (\mergedInt digit -> mergedInt * 10 + toInteger digit) 0 (map digitToInt(tail (show n))))  finalSum

test ::Integer->Integer
test n = (foldl (\mergedInt digit -> mergedInt * 10 + toInteger digit) 0 (map digitToInt(tail (show n)))) --merge the number together using foldL (0 is starting value of 'mergedInt)