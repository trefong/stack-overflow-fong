get '/users/new' do
  erb :'users/new'
end

post '/users/new' do
  User.new(username: params[:username], password: params[:password])
  if @user.save
    session[:id] = @user.id
  else
    #error handling
    redirect '/users/new'
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end
