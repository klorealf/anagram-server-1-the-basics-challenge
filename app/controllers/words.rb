get "words/" do
  redirect "/"
end

get '/words/:word' do
  @word = params[:word]

  @anagram = Word.anagrams(params[:word])

  erb :"words/index"
end

post '/words' do
  @word = params[:input_word]
  @anagram = Word.anagrams(@word)
  erb :"words/index"
end
