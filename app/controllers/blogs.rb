require 'pry'
get "/blogs/new" do
  erb :"/blogs/new"
end

post "/blogs/new" do
  Blog.create(title: params[:title], body: params[:body], user: current_user)
  redirect '/'
end

delete "/blogs/:id" do
  Blog.destroy(params[:id])
  redirect '/'
end

get "/blogs/:id" do
  params[:id]
  @theblog = Blog.where("id = #{params[:id]}")
  erb :"/blogs/show"
end

get "/blogs/:id/edit" do
  # binding.pry
  @post = Blog.find(params[:id])
  erb :"/blogs/edit"
end

post "/blogs/:id" do |id|
  @post = Blog.find_by(id: id)
  @post.update(title: params[:title], body: params[:body])
  redirect "/"
end
