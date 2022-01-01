# Project-Euler

These are my solutions to the Project Euler set

## Problem 7

Here's how I solved problem 7 of the Project Euler problems. The problem was to find the 10001st prime number:

> By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
>
> What is the 10001st prime number?

I first attempted the problem by creating a function to check if 'num' is prime:

```python
def isprime(num):
    for count in range (2,num):
        if num % count == 0:
            return False

    return True
```

If the remainder of count was 0, it is not a prime number. I then made a loop in a function `firstattempt()` checking numbers up to a million to see if they were prime. I chose a million as the number because it was big and would cover all the prime numbers. If the number of primes was 10001, it prints the result.

This solved the problem, giving the right answer; however, it was very slow, taking around 12-13 seconds. To make it faster, i figured out why it was slow, using Big O Notation. I found the first for loop (`for count in range (2,num)`) was O(n), and the other outer loop (`for count in range (2,1000000)`) was O(n), so the overall complexity was O(n²), therefore it was slow.

To solve this issue, I used a prime sieve. Firstly I wrote pseudocode for the algorithm, then I wrote this in Python. I created a list to store prime numbers that the program finds. Assuming the prime number is true, it checks to see if the number is not a prime, using the list. If its not prime, the loop continues. If it is, the prime number is put into the list. Then I checked the list was equal to 10001, then found the last number of the list to print out the answer. This was much faster, taking about 1 second.
