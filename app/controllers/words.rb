get '/words/:word' do
  @word = params[:word]
  @array_anagrams = Word.new(word: params[:word]).anagrams
  # Look in app/views/anagrams/index.erb
  erb :"words/index"
end
