post 'questions/new' do
  Question.new
end

get '/questions' do
  @questions = Question.all
  erb :index
end
