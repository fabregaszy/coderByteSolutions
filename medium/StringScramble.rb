def StringScramble(str1, str2)
    str2.chars{|c|
        return "false" unless str1.include? c
    }
    return "true"
end


puts StringScramble "cdore", "coder"
