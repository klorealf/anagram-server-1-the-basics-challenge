get '/words/:word' do
@word = params[:word]
  # Look in app/views/anagrams/index.erb
  #@article = Word.find_by(word: @word)
  @FoundWordsArray = []
  Wordpermutationsarray = params[:word].chars.permutation.map &:join
  Wordpermutationsarray.each do |permuteword|
  	if Word.exists?(word: permuteword + "\n")
  		@FoundWordsArray.push(permuteword)
  	end
  end
  erb :"words/index"
end
