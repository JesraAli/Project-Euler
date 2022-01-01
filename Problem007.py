## THE PROBLEM: ##
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10001st prime number?

# Created a function that checks if 'num' is a prime number
# If the remainder of the count is 0, then we know it isn't a prime number
#   For example: if num is 6 and count is 3, then 6 % 3 == 0 and 6 is not prime
def isprime(num):
    for count in range (2,num):
        if num % count == 0:
            return False

    return True

# I made a loop for all numbers up to a million and it checks
# if the number is prime and then keeps track of the number of
# prime numbers that we have seen. If the number of prime numbers
# that we have seen is 10001, then we print the result and stop
def firstattempt():
    prime=0
    for count in range (2,1000000):
        if isprime(count) ==True:
            prime=prime+1
            if prime == 10001:
                print (count)
                break

# I used a prime sieve by making a for loop and a list of primes
# that we have found. We assume the prime number is true and 
# check if it is not a prime by using the list of primes.
# If it wasn't a prime, we continue the loop and if it is a prime
# then we put it in the list using list.append(). If the length
# of the prime list is equal to 10001 then we find the last number
# of the prime list and print it
def secondattempt():
    primelist=[]
    for count in range (2,1000000):

        # This checks if the number is prime
        # using our primelist
        isprimenumber=True
        for prime in primelist:
            if count % prime ==0:
                isprimenumber = False
                break

        # If the number is not prime, keep going
        # otherwise add it to the list
        if isprimenumber==False:
            continue
        else:
            primelist.append(count)

        # Checks the length of the list to see
        # if we've found the 10001th prime number
        if len(primelist)==10001:
            print(primelist[-1])
            break


# firstattempt()
secondattempt()