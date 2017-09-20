class Word < ApplicationRecord
  validates :word, :presence => true

  def comparable_word
    self.word.downcase.split("").sort.join
  end

  def anagrams
    Word.select{|w| w.comparable_word == self.comparable_word }
  end
end
