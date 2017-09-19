WORD_LIST_FILENAME = "db/fixtures/abridged_word_list.txt"

class Word < ApplicationRecord
  def anagrams
    hsh_words = {}
    File.foreach(WORD_LIST_FILENAME) do |word|
      word = word.gsub("\n","")
      hsh_words[word] = word.chars.sort.join.downcase
    end
    return hsh_words.select{|k, v| v == self.word.chars.sort.join.downcase}.map{|k, v| k}
  end
end
