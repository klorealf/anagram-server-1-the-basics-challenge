WORD_LIST_FILENAME = "db/fixtures/abridged_word_list.txt"

Word.delete_all


File.foreach(WORD_LIST_FILENAME) do |line|
  insert_word = {
    :word => line.chomp
  }
  Word.create(insert_word)
end
