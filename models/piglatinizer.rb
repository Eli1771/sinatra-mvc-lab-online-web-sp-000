class PigLatinizer 
  
  def piglatinize(phrase) 
    converted = ''
    words = phrase.split(" ")
    words.each do |word|
      if word[0].match(/[aeiouAEIOU]/)
        result = word + 'way '
      else
        letters = word.chars 
        first_vowel = letters.find_index {|l| l.match(/[aeiouAEIOU]/)}
        syl1 = word[first_vowel, word.length - 1]
        syl2 = word[0, first_vowel]
        result = syl1 + syl2 + 'ay '
      end
      converted += result
    end
    converted[0, converted.length - 2]
  end
  
end 