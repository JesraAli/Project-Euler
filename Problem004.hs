
--A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is
--9009 = 91 x 99.
--Find the largest palindrome made from the product of two 3-digit numbers.


--Originally had used 'last', but realised that the last value in the list was not neccessarily the largest palindrome, 
--therefore, switched to using 'maximum'
--'show' makes something into a string, so in order to use reverse function, had to convert it into a string.

largest3Palindrome :: Int
largest3Palindrome = maximum[(x*m) | x <- [100..999], m <- [100..999], let intToString = show (x*m), intToString == reverse intToString]
