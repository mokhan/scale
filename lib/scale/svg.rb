require 'nokogiri'

module Scale
  class SVG
    def to_xml
      builder = Nokogiri::XML::Builder.new do |xml|
        xml.svg(version: "1.1", baseProfile: "full", xmlns: "http://www.w3.org/2000/svg") do
        end
      end
      builder.to_xml
    end
  end
end
