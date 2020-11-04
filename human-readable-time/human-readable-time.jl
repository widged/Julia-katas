"convert a number of seconds into a HH:MM:SS string"

function nn(n)
    return lpad(string(n), 2, '0')
end

function humanreadable(seconds)
    # Hours, minutes and seconds
    hrs = seconds ÷ 3600;
    mins = (seconds % 3600) ÷ 60;
    secs = seconds % 60;
    return "$(nn(hrs)):$(nn(mins)):$(nn(secs))";
end
