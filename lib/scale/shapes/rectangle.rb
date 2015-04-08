module Scale
  class Rectangle
    include Node
    attribute :width, String
    attribute :height, String
    attribute :fill, String
    attribute :fill_opactiy, String
    attribute :stroke, String
    attribute :stroke_opacity, String
    attribute :x, Integer
    attribute :y, Integer
    attribute :rx, Integer
    attribute :ry, Integer

    def xml_tag
      :rect
    end
  end
end
