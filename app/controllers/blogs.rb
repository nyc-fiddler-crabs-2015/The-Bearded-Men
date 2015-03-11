get "/blogs/:id" do
  params[:id]
  @theblog = Blog.where("id = #{params[:id]}")
  erb :"blogs/show"
end

get "/blogs/:id/edit" do
  @post = Blog.where("id = #{params[:id]}")
  erb :"blogs/edit"
end