#write your code here
def echo(word)
    word
end

def shout(word)
    word.upcase
end

def repeat(word,n=2)
    ([word]*n).join(" ")
end

def start_of_word(word,n=2)
    word[0..(n-1)]
end

def first_word(sentence)
    sentence.split()[0]
end

def titleize(word)
    nword=word.split(' ').map do |word|
        if ['the', 'and', 'over'].include?(word)
            word 
        else
            word.capitalize
        end
    end
    nword.first.capitalize!
    nword.join(' ')
end


