module Scale
  class Rectangle
    include Node
    attribute :width, String
    attribute :height, String
    attribute :fill, String
    attribute :x, Integer
    attribute :y, Integer
    attribute :rx, Integer
    attribute :ry, Integer

    def xml_tag
      :rect
    end
  end
end
