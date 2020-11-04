
"pad an integer to get to a 00 format"
"""
:Q: what are, in julia, the pros and cons of declaring this utility
function outside the humanreadable function or nesting it inside it?
"""
function nn(n)
    return lpad(string(n), 2, '0')
end

"convert a number of seconds into a HH:MM:SS string"
function humanreadable(seconds)
    hrs = seconds ÷ 3600;
    mins = (seconds % 3600) ÷ 60;
    secs = seconds % 60;
    return "$(nn(hrs)):$(nn(mins)):$(nn(secs))";
end
