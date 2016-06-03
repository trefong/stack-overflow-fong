post '/answers' do
  question_id = params[:question_id]
  @answer = Answer.create(body: params[:body], question_id: question_id, user_id: current_user.id)
  redirect "/questions/#{question_id}"
end
