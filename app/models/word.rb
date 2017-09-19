class Word < ApplicationRecord
  # Remember to create a migration!
  def anagrams
    validates :word, presence: true
  end

end
