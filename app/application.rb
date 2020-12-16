class Application
  def call(env)
    resp = Rack::Response.new
    if req.path.match(/items/)
      item = req.path.match(/items/)[0][6..-1]
      

      
    resp.finish
  end

end 