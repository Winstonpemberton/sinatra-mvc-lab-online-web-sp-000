class PigLatinizer

  # def is_vowel?(word)
  #   vowels = 'aeiouAEIOU'
  #   vowels.include?(word[0])
  # end
  #
  #  def piglatinize(word)
  #    if self.is_vowel?(word) == true
  #      word.concat('way')
  #    else
  #      word.concat(word.slice!(/^[^aeiouAEIOU]*/i || "")) + 'ay'
  #    end
  #  end
  #
  #
  #  def to_pig_latin(phrase)
  #    phrase.split.collect {|word| piglatinize(word)}.join(' ')
  #  end

  def piglatinize(word)
    word[0] =~ /[aeiou]/ ? word.gsub(/([aeiou])(\w+)*/, '\1\2way') : word.gsub(/([^aeiou])(\w+)*/, '\2\1ay')
  end

end
