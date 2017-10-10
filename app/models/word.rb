class Word < ApplicationRecord
  validates :word, presence: true

  def organize_char
    self.word.downcase.split("").sort.join.downcase
  end

  def anagrams
    Word.select{ |i| i.organize_char == self.organize_char }
  end
end
