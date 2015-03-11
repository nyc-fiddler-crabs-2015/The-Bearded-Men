get '/' do
  @blogs = Blog.all
  erb :index
end

get '/blogs' do
  content_type :json
  Blog.all.to_json

end
