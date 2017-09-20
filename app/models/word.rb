WORD_LIST_FILENAME = "db/fixtures/abridged_word_list.txt"

class Word < ApplicationRecord
  def anagrams
    hsh_words = {}
    File.foreach(WORD_LIST_FILENAME) do |word|
      word = word.gsub("\n","")
      hsh_words[word] = word.chars.sort.join.downcase
    end
    searched_word = self.word.gsub("\n","")
    return hsh_words.select{|k, v| v == searched_word.chars.sort.join.downcase}.map{|k, v| k}
  end
end

# class Word < ApplicationRecord
#   def anagrams
#     Word.where("length(word) = ?", self.word.length).select do |elm_word|
#       elm_word.word.chars.sort == self.word.chars.sort
#     end
#   end
# end
