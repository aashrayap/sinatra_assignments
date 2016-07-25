require 'sinatra'

get '/text_form' do 
  erb :text_field
end

post '/text_form?choice=rock' do 
  input_text=params[:name]
  erb :text_reply, locals:{buddy:input_text}
end