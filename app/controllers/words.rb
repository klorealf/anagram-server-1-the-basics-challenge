get '/words/:word' do
  @word = params[:word]
  # # Look in app/views/anagrams/index.erb
  @anagram = Word.new(word: params[:word]).anagrams
  # @anagram = @word.anagrams
  # puts @anagram
  erb :"words/index"
end
