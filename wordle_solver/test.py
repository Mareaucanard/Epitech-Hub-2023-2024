def sieve_eratosthenes(limit):
    sieve = [True] * (limit + 1)
    sieve[0] = sieve[1] = False
    primes = []

    for current in range(2, int(limit ** 0.5) + 1):
        if sieve[current]:
            primes.append(current)
            for multiple in range(current * current, limit + 1, current):
                sieve[multiple] = False

    for current in range(int(limit ** 0.5) + 1, limit + 1):
        if sieve[current]:
            primes.append(current)

    return primes

limit = 100_000
primes = sieve_eratosthenes(limit)
print("Les nombres premiers de 1 à 100,000,000 sont:")
print(len(primes))
