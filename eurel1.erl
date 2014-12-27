-module(eurel1).

-export([main/0]).

main() ->
    SumMultiple = 
        fun(X, Sum) ->
            if (X rem 3 == 0) or (X rem 5 == 0) -> Sum + X;
                true -> Sum
            end
        end,
    lists:foldl(SumMultiple, 0, lists:seq(3, 999)).