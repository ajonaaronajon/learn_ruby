#write your code here
def echo phrase
  phrase
end

def shout phrase
  phrase.upcase
end

def repeat phrase, times=2
  ((phrase + " ") * times).chop
end

def start_of_word phrase, amount
  phrase[0..amount-1]
end

def first_word phrase
  phrase.split(' ')[0]
end

def titleize phrase
  newPhrase = phrase.split(' ')
  smallWord = ['and', 'to', 'for', 'the', 'from', 'is', 'a', 'over']
  newPhrase.each do |word|
    current_index = newPhrase.index(word)

    if(smallWord.index(word) == nil)  
      newPhrase.insert(current_index, word.capitalize)
      newPhrase.delete_at(current_index+1)
    elsif(smallWord.index(word) != nil && current_index == 0)
      newPhrase.insert(current_index, word.capitalize)
      newPhrase.delete_at(current_index+1)
    end

  end
  newPhrase = newPhrase.join(" ")
end



