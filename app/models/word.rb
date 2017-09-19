require 'pry'
class Word < ApplicationRecord

  def anagrams
  anagrams_collection = []
  # binding.pry
   Word.all.each do |compare_word|
    compare = compare_word.word.chars.sort.join
    original = self.word.chars.sort.join
      if compare == original
        anagrams_collection << compare_word.word
      end
    end
    anagrams_collection
  end
end
