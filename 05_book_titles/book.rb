class Book
    def title=(str)
        words = str.split
        new_title = [words[0].capitalize]
        words.shift
        if words.length>0
            for word in words
                if word == 'i'
                    new_title << word.capitalize
                elsif word.length < 3 || word == "and" || word == "the"
                    new_title << word
                else
                    new_title << word.capitalize
                end
            end
        end
        @title = new_title.join(' ')
    end

    def title 
        @title
    end



end
