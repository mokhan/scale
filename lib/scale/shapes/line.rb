module Scale
  class Line
    include Node
    attribute :x1, Integer # the x position of point 1
    attribute :y1, Integer # the y position of point 1
    attribute :x2, Integer # the x position of point 2
    attribute :y2, Integer # the y position of point 2

    def xml_tag
      :circle
    end
  end
end
