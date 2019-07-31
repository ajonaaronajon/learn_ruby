#write your code here
def translate phrase
  translated = phrase.split(' ')
  translated.each do |word|
    current_index = translated.index(word)
    if word.start_with?('a', 'e', 'i', 'o', 'u', 'qu')
      if(word.start_with?('qu'))
        pig_latin_word = word[2..word.length] + word[0..1]
      else
        pig_latin_word = word 
      end
      
    else
      pig_latin_word = word[1..word.length] + word[0]
      if(!pig_latin_word.start_with?('a', 'e', 'i', 'o', 'u'))
        
        pig_latin_word = translate(pig_latin_word)
      end
    end
    last_two_letters = pig_latin_word[pig_latin_word.length-2..pig_latin_word.length-1]
    if last_two_letters == 'ay'
      pig_latin_word = pig_latin_word.chop.chop
    end
    translated.insert(current_index, pig_latin_word + 'ay')
    translated.delete_at(current_index+1)

  end
  translated = translated.join(' ')
end



