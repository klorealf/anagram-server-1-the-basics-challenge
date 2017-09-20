get '/words' do

  erb :"words/index"
end


post '/words' do
  @test = params[:entered_word].downcase
  # Look in app/views/anagrams/index.erb
  @word = Word.where("word = '#{@test}'")
  @list = @word[0].anagrams
  @output = @list.map{|match| match.word}
  erb :"/words/index"

end
