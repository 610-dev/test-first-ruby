def translate(str)
    words = str.split(' ')
    words.each do |word|
        temp = ''
        until ['a', 'e', 'i', 'o', 'u'].include?(word[0]) do
            if (word[0]=='q' && word[1]=='u')
                temp << word[0,2]
                word[0,2] = ''
            else
                temp << word[0]
                word[0] = ''
            end
        end
        word << temp + 'ay'
    end
    words.join(' ')
end