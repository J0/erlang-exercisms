-module(leap).

-export([leap_year/1]).

leap_year(Year) ->
    case {Year rem 400, Year rem 100, Year rem 4} of
        {0, _, _} -> true;
        {_, 0, _} -> false;
        {_, _, 0} -> true;
        {_, _, _} -> false
    end.
