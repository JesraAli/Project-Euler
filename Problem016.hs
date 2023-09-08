module Problem016 (callNum, sumOfDigits) where


--2^15 = 32768 and the sum of its digits is 3+2+7+6+8= = 26.
--What is the sum of the digits of the number 2^1000?
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