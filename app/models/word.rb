class Word < ApplicationRecord
  def anagram
    @anagrams= []
    Word.all.each do |comp_word|
      compare = comp_word.word.chars.sort.join
      original = self.words.chars.sort.join
      if compare == original
        @anagrams.push(comp_word.word)
      end
      puts @anagrams
    end
  end
end
