WORD_LIST_FILENAME = "db/fixtures/abridged_word_list.txt"

Word.delete_all

File.foreach(WORD_LIST_FILENAME) do |line|
  Word.create(word: line)
end
