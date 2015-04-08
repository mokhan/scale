require 'virtus'

module Scale
  module Node
    include Enumerable
    include Virtus.module
    attr_reader :content
    attribute :style, String

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
      attributes.inject({}) do |memo, (key, value)|
        new_key = key.to_s.gsub(/\_/, "-").to_sym
        memo[new_key] = value unless value.nil?
        memo
      end
    end

    private

    def xml_parameters
      return [xml_attributes] if content.nil?
      [content, xml_attributes]
    end
  end
end
