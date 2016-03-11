def echo(string)
    return string
end

def shout(string)
    return string.upcase
end

def repeat(string, number = 2)
    return ([string] * number).join(" ")
end

def start_of_word(string, number)
    return string[0...number]
end

def first_word(string)
    return string.split.first
end

def titleize(string)
    words = string.split.map do |word|
        if %w(the and over).include?(word)
            word
        else
            word.capitalize
        end
    end
    words.first.capitalize!
    words.join(" ")
end