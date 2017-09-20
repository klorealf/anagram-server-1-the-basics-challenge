get '/words/:word' do
  @word = Word.new(word: params[:word])
  @list_word = @word.anagrams
  erb :"words/index"
end

