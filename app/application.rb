require_relative './item'

class Application
  def call(env)
    resp = Rack::Response.new
    if req.path.match(/items/)
      current_item_name = req.path.match(/items/)[0][6..-1]
      current_item = Item.all.find?(|item| item.name == current_item_name))
      if(current_item != nil)
        return current_item.price
      else 
        

      
    resp.finish
  end

end 