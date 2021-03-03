-module(difference_of_squares).

-import(lists, [sum/1]).

-export([difference_of_squares/1,
         square_of_sum/1,
         sum_of_squares/1]).

difference_of_squares(Number) ->
    square_of_sum(Number) - sum_of_squares(Number).

square_of_sum(Number) ->
    trunc(math:pow(sum(lists:seq(1, Number)), 2)).

sum_of_squares(Number) ->
    sum([X * X || X <- lists:seq(1, Number)]).
