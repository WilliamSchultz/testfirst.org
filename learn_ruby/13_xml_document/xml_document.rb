class XmlDocument
  
  def hello(hash=nil)
    hash.nil? ? "<hello/>" : "<hello #{hash.keys[0]}='#{hash[:name]}'/>"
  end 
  
  def send(input)
    "<#{input}/>"
  end 
  
end 

xml = XmlDocument.new
puts xml.hello