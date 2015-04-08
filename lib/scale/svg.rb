require 'nokogiri'

module Scale
  class SVG
    attr_accessor :width, :height

    def initialize(width: nil, height: nil)
      @width, @height = width, height
    end

    def to_xml
      builder = Nokogiri::XML::Builder.new do |xml|
        xml.svg(attributes) do
        end
      end
      builder.to_xml
    end

    private

    def attributes
      attributes = {
        version: "1.1", 
        baseProfile: "full", 
        xmlns: "http://www.w3.org/2000/svg",
      }
      attributes[:width] = width unless width.nil?
      attributes[:height] = height unless height.nil?
      attributes
    end
  end
end
