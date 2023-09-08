import Data.Char (digitToInt)

callNum ::Int
callNum = sumOfDigits (2^1000) 0

--Used Integer, so it can read 2^1000
sumOfDigits :: Integer->Int-> Int
sumOfDigits 0 finalSum = finalSum

--Added the first digit of the number to 'finalSum', then recursively called sumOfDigits until n was 0
--Retrieved the tail of the number, and using 'map', converted each digit to an Int
--Then used foldl to merge the returned list values together
sumOfDigits n finalSum = finalSum + digitToInt(head (show n) ) + sumOfDigits (foldl (\mergedInt digit -> mergedInt * 10 + toInteger digit) 0 (map digitToInt(tail (show n))))  finalSum