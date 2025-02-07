local function flypy_time_translator(input, seg)
    if (input == "ouj") then

        --- Candidate(type, start, end, text, comment)

        yield(Candidate("time", seg.start, seg._end, os.date("%H:%M"), ""))

        yield(Candidate("time", seg.start, seg._end, os.date("%H:%M:%S"), ""))

    end
end

return flypy_time_translator
