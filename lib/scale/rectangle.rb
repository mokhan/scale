module Scale
  class Rectangle
    include Node

    def initialize(width: nil, height: nil, fill: nil)
      @width = width
      @height = height
      @fill = fill
    end

    def xml_tag
      :rect
    end

    def attributes
      { width: @width, height: @height, fill: @fill }
    end
  end
end
