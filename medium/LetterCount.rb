def CalGreatestNumber word
    max = 0
    char_arr = word.chars.to_a
    char_arr.uniq.each{ |c|
        count = char_arr.count c
        if count >= max
            max = count
        end
    }
    max
end

def LetterCount(str)
    words = str.split ' '
    max = 0
    count = 0
    max_word = ''
    words.each{ |w|
        count = CalGreatestNumber w
        if count > max
            max_word = w
            max = count
        end
    }
    max_word = -1 if max == 1
    max_word
end

