post '/comment' do
  content_type :json
  "#{params}".to_json
end
