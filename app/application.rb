class Application
 
    def call(env)
      resp = Rack::Response.new
   
      resp.write Time.now
      
   
      if Time.now.hour < 12
        resp.write "Good Morning"
      else
        resp.write "Good Afternoon"
      end
   
      resp.finish
    end
   
  end