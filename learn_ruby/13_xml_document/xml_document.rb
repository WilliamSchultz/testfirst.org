class XmlDocument
  
  def hello(hash={}, &block)
    if block.to_s.empty? == true
      hash.empty? ? "<hello/>" : "<hello #{hash.keys[0]}='#{hash[:name]}'/>"
    else
    "<hello>#{yield}</hello>"
    end 
  end 
  
  def goodbye
    "<goodbye/>"
  end 
  
  
  def send(input)
    "<#{input}/>"
  end  
  
end 

@xml = XmlDocument.new
@xml.hello do
  "dolly"
end