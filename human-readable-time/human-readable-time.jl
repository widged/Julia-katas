
"""
    nn(n)

pad an integer to get to a 00 format

:Q: what are, in julia, the pros and cons of declaring this utility
function outside the humanreadable function or nesting it inside it?

:A: If you define it outside it can be used by other functions.
It can make sense to define it inside if this function would need a lot of arguments if defined outside.
Performance wise it should be the same but you can always just check your use case with:

```
using BenchmarkTools
@benchmark humanreadable(1337)
```

It can happen that for complicated inner functions that the compiler has some problems with checking types.
You might want to check your code with

`@code_warntype humanreadable(1337)`

If anything is showing up red it's usually quite a big problem ;)

In general it's always good to define functions to structure code as you did and it can help
the compiler as julia compiles per function so if you have uncertanities in types inside a
function it's useful to create an inner function for that.

An example can be found here: https://docs.julialang.org/en/v1/manual/performance-tips/#kernel-functions
"""
function nn(n)
    return lpad(string(n), 2, '0')
end

"""
    humanreadable(seconds)

convert a number of seconds into a HH:MM:SS string
"""
function humanreadable(seconds)
    hrs,mins = divrem(seconds, 3600)
    mins ÷= 60;
    secs = seconds % 60;
    return "$(nn(hrs)):$(nn(mins)):$(nn(secs))";
end
