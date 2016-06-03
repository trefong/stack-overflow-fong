get '/users/new' do
  erb :'users/new'
end

post '/users/new' do
  @user = User.new(username: params[:username], password: params[:password])
  if @user.save
    session[:id] = @user.id
    redirect '/questions'
  else
    #error handling
    redirect '/users/new'
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  @questions = @user.questions
  erb :'users/show'
end
