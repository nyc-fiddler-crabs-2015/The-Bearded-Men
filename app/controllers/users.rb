get '/users/:id' do
  @user = User.find(params[:id])
  @user_blogs = Blog.where("user_id = #{params[:id]}")
  erb :'user/dashboard'
end

# get '/user_blogs' do
#   content_type :json
#   Blog.where("user_id = #{params[:id]}").to_json
# end

get '/authentication/logout' do
  session[:user_id] = nil
  redirect '/'
end


