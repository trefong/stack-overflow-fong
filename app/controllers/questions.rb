get '/questions/new' do
  erb :'questions/new'
end

post 'questions/new' do
  Question.create(title: params[:title], body: params[:body], user_id: session[:user_id])
end
