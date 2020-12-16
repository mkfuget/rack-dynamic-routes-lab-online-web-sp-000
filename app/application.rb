require_relative './item'

class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      current_item_name = req.path[7..-1]
      puts current_item_name
      puts Item.all
      current_item = Item.all.find{|item| item.name == current_item_name}
      puts current_item.name
      if(current_item != nil)
        return current_item.price
      else 
        resp.write "Item not found"
        resp.status = 400
      end 
    else 
      resp.write "Route not found"
      resp.status = 404
    end
      
    resp.finish
  end

end 