get '/questions/new' do
  erb :'questions/new'
end

post '/questions' do
  Question.create(title: params[:title], body: params[:body], user_id: session[:user_id])
end

get '/questions/:id' do
  @question = Question.find(params[:id])
  erb :'questions/show'
end

get '/questions' do
  @questions = Question.all
  erb :index
end
