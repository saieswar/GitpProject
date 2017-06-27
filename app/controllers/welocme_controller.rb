class WelocmeController < ApplicationController
  @@client = ApiAiRuby::Client.new(:client_access_token => '94f6fbf828e44dab84b409f647a7f1e5',timeout_options: [:global, { write: 10, connect: 10, read: 10 }])    
 
  def index
  end
def test
    render json:{
       success: true,
       speech: "pl",
       displayText: "pl",
       #data: {},
      # contextOut: [],
        source: "SHRMS"
     }

end

  def ai
    msg = params[:msg]
    puts "msg===================#{msg}"
    response = @@client.text_request msg
    puts "response-----------------------#{response}" 
    render json:{response: response}
  end


end
