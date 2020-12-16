require_relative './item'

class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      current_item_name = req.path[7..-1]
      puts current_item_name
      Item.all.each do |x|
        puts "-- #{x.name}"
      end
      current_item = Item.all.find{|item| item.name == current_item_name}
      if(current_item != nil)
        puts "test"
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