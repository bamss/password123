require 'sinatra'

get '/' do
    erb :index
end

post '/result' do
    @@sentence = params['bamss'].to_s
    arr = @@sentence.chars.map{|l| l  = l.ord + 3}
    tab = @@sentence.chars.map{|l| l  = l.ord}
    # j'ajoute plus 1 a la valeur de tout mes lettres
    #rand(l.ord..122)
    @@sentence = arr.map{|i| i.chr}
    # je transforme la nouvelle valeur de mes lettres en caractères
    @@sentence =  @@sentence.join("")
    # random = arr[0].ord
    maj = tab[0].chr.upcase
    @@sentence = maj + @@sentence #+ random.to_s
    puts @@sentence
    redirect '/result'
end

get '/result' do
    @result = @@sentence
    erb :result
   
end

