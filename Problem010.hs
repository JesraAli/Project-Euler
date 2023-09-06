
sumPrimes :: Int
sumPrimes = sum[x | x <- [2..2000000], [m | m<-[1..x], x `mod` m ==0] ==[1,x]]

