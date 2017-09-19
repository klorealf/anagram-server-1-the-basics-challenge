class Word < ApplicationRecord

  def anagrams
    self.word.char
    new_array = []

    @word.sort_randomly
  end
end
