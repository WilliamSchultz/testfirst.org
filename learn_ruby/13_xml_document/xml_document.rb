class XmlDocument
  
  def hello(hash={}, &block)
    if block.to_s.empty? == true
      hash.empty? ? "<hello/>" : "<hello #{hash.keys[0]}='#{hash[hash.keys[0]]}'/>"
    else
    "<hello>#{yield}</hello>"
    end 
  end 
  
  def goodbye(input=nil, &block)
    if block.to_s.empty? == true
      "<goodbye/>"
    else 
      "<goodbye>#{yield}</goodbye>"
    end
  end 
  
  def come_back(input=nil, &block)
    if block.to_s.empty? == true
      "<come_back/>"
    else 
      "<come_back>#{yield}</come_back>"
    end
  end
  
  def ok_fine(hash={})
    "<ok_fine #{hash.keys[0]}='#{hash[hash.keys[0]]}'/>"
  end
  
  def send(input)
    "<#{input}/>"
  end  
  
end 

@xml = XmlDocument.new
@xml.hello do
  "dolly"
end