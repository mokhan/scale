module Scale
  class Rectangle
    include Node
    attr_accessor :height, :width, :fill, :x, :y, :rx, :ry

    def initialize(width: nil, height: nil, fill: nil)
      @width = width
      @height = height
      @fill = fill
    end

    def xml_tag
      :rect
    end

    def attributes
      { width: width, height: height, fill: fill, x: x, y: y, rx: rx, ry: ry }.delete_if { |key, value| value.nil? }
    end
  end
end
