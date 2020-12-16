class Application
  def call(env)
    resp = Rack::Response.new
    current_hour = Time.now.hour
    if req.path.match(/items/)
      
      
    resp.finish
  end

end 