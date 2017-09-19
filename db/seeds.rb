WORD_LIST_FILENAME = "db/fixtures/abridged_word_list.txt"

CreateWord.delete_all

File.foreach(WORD_LIST_FILENAME) do |line|
  # write code to create a new record in the database for each line of the input file
  CreateWord.create(word: line)
end
