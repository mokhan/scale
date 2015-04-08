module Scale
  class Ellipse
    include Node
    attribute :rx, Integer
    attribute :ry, Integer
    attribute :cx, Integer
    attribute :cy, Integer

    def xml_tag
      :ellipse
    end
  end
end
