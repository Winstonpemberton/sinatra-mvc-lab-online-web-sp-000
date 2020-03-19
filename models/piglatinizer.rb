class PigLatinizer

  def is_vowel?(word)
    vowels = 'aeiouAEIOU'
    vowels.include?(word[0])
  end

   def piglatinizer(word)
     if self.is_vowel?(word)
       word.concat('way')
     else
       word.concat(word.slice!(/^[^aeiouAEIOU]*/i || "")) + 'ay'
     end
   end


   def sentence_to_pig_latin(sentence)
     sentence.split.collect {|word| piglatinizer(word)}.join(' ')
   end
end
