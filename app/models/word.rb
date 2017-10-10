class Word < ApplicationRecord
  validates :word, presence: true

  def self.anagrams(word)
    Word.all.select do |i|
      organize_char(i.word) == organize_char(word)
    end
  end
  private
    def self.organize_char(word)
      word.downcase.split("").sort.join
    end
end
