-module(eurel2).

-export([main/0]).

fibonacci_tr(Limit, Current, Next, Fibs) when Current < Limit ->
    fibonacci_tr(Limit, Next, Current + Next, [Current|Fibs]); 
fibonacci_tr(_Limit, _Current, _Next, Fibs) ->
    Fibs.

fibonacci(Limit) -> fibonacci_tr(Limit, 0, 1, []).

main() ->
    SumEven = 
        fun (X, Sum) ->
            if (X rem 2 == 0) -> Sum + X;
                true -> Sum
            end
        end,
    lists:foldl(SumEven, 0, fibonacci(4000000)).