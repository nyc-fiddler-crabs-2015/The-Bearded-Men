get "/blogs/new" do
  erb :"/blogs/new"
end

post "/blogs/new" do
  Blog.create(title: params[:title], body: params[:body], user: current_user)
  redirect '/'
end

get "/blogs/:id" do
  params[:id]
  @theblog = Blog.where("id = #{params[:id]}")
  erb :"/blogs/show"
end

get "/blogs/:id/edit" do
  @post = Blog.where("id = #{params[:id]}")
  erb :"/blogs/edit"
end
