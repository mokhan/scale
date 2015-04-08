require 'nokogiri'

module Scale
  class SVG
    include Node
    attr_accessor :width, :height

    def initialize(width: nil, height: nil)
      @width, @height = width, height
    end

    private

    def xml_tag
      :svg
    end

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
