get '/questions/new' do
  erb :'questions/new'
end

post '/questions' do
  Question.create(title: params[:title], body: params[:body], user_id: current_user.id)
  redirect '/questions'
end

get '/questions/:id' do
  @question = Question.find(params[:id])
  @user =
  erb :'questions/show'
end

get '/questions' do
  @questions = Question.order(created_at: :desc)
  erb :index
end
