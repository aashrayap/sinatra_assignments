require 'sinatra'

helpers do
  def outcome
  	outcome=[1,2,3].sample
  	if outcome==1
  	  "You Win!"
  	elsif outcome==2
      "You Lose!"
  	elsif outcome==3
      "Tie Game!"
    end
  end
end

get '/' do 
  erb :choice_form
end

post '/choice_form' do
  result=outcome
  erb :show_result , locals:{outcome:result} 
end

