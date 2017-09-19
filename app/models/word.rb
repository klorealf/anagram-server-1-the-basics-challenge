class Word < ApplicationRecord
  def anagrams
    hsh = {}
    File.foreach(WORD_LIST_FILENAME) do |line|
    # write code to create a new record in the database for each line of the input file
      hsh[line.chars.sort.join.downcase] = Word.create(word: line)
    end
  end
end
