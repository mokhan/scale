module Scale
  class Rectangle
    def initialize(width: nil, height: nil, fill: nil)
      @width = width
      @height = height
      @fill = fill
    end

    def append_to(builder)
      builder.rect(width: @width, height: @height, fill: @fill)
    end
  end
end
