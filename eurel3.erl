-module(eurel3).

-export([main/0]).

prime_factors(Number, _N, Factors) when Number == 1 ->
	Factors;
prime_factors(Number, N, Factors) when Number rem N == 0 ->
    prime_factors(Number div N, N, [N|Factors]);
prime_factors(Number, N, Factors) ->
	prime_factors(Number, N + 1, Factors).
	
main() ->
    N = 600851475143,
	Factors = prime_factors(N, 2, []),
	lists:max(Factors).