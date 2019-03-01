#write your code here
def translate(s)
    pigified=[]
    puts "english phrase is: " + s
    words = s.split
    for word in words 
        if word[/^[aeiou]/]
            word=word+'ay'
        elsif word[/^[qu]/]
            word = word[2,word.length-1]+'quay'
        elsif word[/^[squ]/]
            word = word[3,word.length-1]+word[0,3]+'ay'

        elsif word[/^[^aeiou]{3}/]
            ending = word.slice(0...3) + 'ay'
            word = word.slice(3...word.length+1) + ending
        elsif word[/^[^aeiou]{2}/]
            ending = word.slice(0...2) + 'ay'
            word = word.slice(2...word.length+1) + ending
        elsif word[/^[^aeiou]/]
            word = word[1,word.length-1]+word[0,1]+'ay'
        end
        pigified << word
    end
    return pigified.join(' ')
end

#def translate(s)
 #   puts "english phrase is: "+s
 #   words = s.split
  #  pigified = [] 
    
  #  for word in words
   #   if  word[/^[aeiou]/]
    #    word = word+"ay"
      #else
      #  if word[/^[qu]/] 
      #   word.slice!(/^qu/)
      #   ending = "quay"           
      #  else
      #   ending = word.slice!(0...(word.index(/[aeiou]/,1)))+"ay"
       # end
        #word = word << ending
      #end 
      # pigified << word
    #end
    #puts "pig latin phrase is: "+pigified.join(" ")
    #return pigified.join(" ")
  #end


