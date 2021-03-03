-module(rna_transcription).

-export([to_rna/1]).

to_rna(Strand) ->
    Map = #{$A => $U, $T => $A, $G => $C, $C => $G},
    lists:map(fun (X) -> maps:get(X, Map) end, Strand).
