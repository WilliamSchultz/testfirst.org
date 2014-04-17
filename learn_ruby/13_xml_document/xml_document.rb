class XmlDocument
  
  attr_accessor :indent
  
  def initialize(indent=false)
    @indent = indent
  end 
  
  def hello(hash={}, &block)
    if block.to_s.empty? == true
      hash.empty? ? "<hello/>" : "<hello #{hash.keys[0]}='#{hash[hash.keys[0]]}'/>"
    elsif @indent == true
      "<hello>\n" + yield + "</hello>\n"
    else
      "<hello>#{yield}</hello>"
    end 
  end 
  
  def goodbye(input=nil, &block)
    if block.to_s.empty? == true
      "<goodbye/>"
    elsif @indent == true
      "  <goodbye>\n" + yield + "  </goodbye>\n"
    else 
      "<goodbye>#{yield}</goodbye>"
    end
  end 
  
  def come_back(input=nil, &block)
    if block.to_s.empty? == true
      "<come_back/>"
    elsif @indent == true
      "    <come_back>\n" + yield + "    </come_back>\n"
    else 
      "<come_back>#{yield}</come_back>"
    end
  end
  
  def ok_fine(hash={})
    if @indent == false
      "<ok_fine #{hash.keys[0]}='#{hash[hash.keys[0]]}'/>"
    else @indent == true
      "      <ok_fine #{hash.keys[0]}='#{hash[hash.keys[0]]}'/>\n"
    end
  end
  
  def send(input)
    "<#{input}/>"
  end  
end 

