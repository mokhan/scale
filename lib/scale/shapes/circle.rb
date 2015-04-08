module Scale
  class Circle
    include Node
    attribute :cx, Integer
    attribute :cy, Integer
    attribute :r, Integer

    def xml_tag
      :circle
    end
  end
end
