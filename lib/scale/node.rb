require 'virtus'

module Scale
  module Node
    include Enumerable
    include Virtus.module
    attr_reader :content

    def children
      @children ||= []
    end

    def add(node)
      children.push(node)
    end

    def each
      children.each do |child|
        yield child
      end
    end

    def to_xml
      builder = Nokogiri::XML::Builder.new do |xml|
        append_to(xml)
      end
      builder.to_xml
    end

    def append_to(builder)
      builder.send(xml_tag.to_sym, *xml_parameters) do
        each do |node|
          node.append_to(builder)
        end
      end
    end

    def xml_attributes
      attributes.delete_if { |key, value| value.nil? }
    end

    private

    def xml_parameters
      return [xml_attributes] if content.nil?
      [content, xml_attributes]
    end
  end
end
