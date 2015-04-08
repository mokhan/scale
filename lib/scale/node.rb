module Scale
  module Node
    def children
      @children ||= []
    end

    def add(node)
      children.push(node)
    end

    def to_xml
      builder = Nokogiri::XML::Builder.new do |xml|
        append_to(xml)
      end
      builder.to_xml
    end

    def append_to(xml)
      xml.send(xml_tag.to_sym, attributes) do
        children.each do |node|
          node.append_to(xml)
        end
      end
    end
  end
end
