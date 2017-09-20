require 'pry'
class Word < ApplicationRecord

  def anagrams
    @anagrams_collection = []
    Word.all.each do |compare_wd|
      compare = compare_wd.word.chars.sort.join
      original = self.word.chars.sort.join
      if compare == original
        @anagrams_collection << compare_wd.word
      end
    end
    @anagrams_collection
  end
end

# Moved to controler
    # puts "The anagrams of #{self.word} are:"
    # puts @anagrams_collection
