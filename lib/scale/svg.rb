require 'nokogiri'

module Scale
  class SVG
    attr_accessor :width, :height

    def to_xml
      builder = Nokogiri::XML::Builder.new do |xml|
        attributes = {
          version: "1.1", 
          baseProfile: "full", 
          xmlns: "http://www.w3.org/2000/svg",
        }
        attributes[:width] = width unless width.nil?
        attributes[:height] = height unless height.nil?

        xml.svg(attributes) do
        end
      end
      builder.to_xml
    end
  end
end
