require 'virtus'

module Scale
  module Node
    include Virtus.module

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
      xml.send(xml_tag.to_sym, xml_attributes) do
        children.each do |node|
          node.append_to(xml)
        end
      end
    end

    def xml_attributes
      attributes.delete_if { |key, value| value.nil? }
    end
  end
end
