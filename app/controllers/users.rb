get '/users/:id' do
  @user = User.find(params[:id])
  erb :'user/dashboard'
end













get '/authentication/logout' do
  session[:user_id] = nil
  redirect '/'
end