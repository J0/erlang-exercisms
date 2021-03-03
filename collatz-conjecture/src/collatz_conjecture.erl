-module(collatz_conjecture).

-export([steps/1]).

steps(N) -> steps_helper(N, 0).

steps_helper(N, Steps) ->
    case {N rem 2, N, N > 0} of
        {_, _, false} -> erlang:error(badarg);
        {_, 1, _} -> Steps;
        {1, _, _} -> steps_helper(3 * N + 1, Steps + 1);
        {0, _, _} -> steps_helper(N div 2, Steps + 1)
    end.
