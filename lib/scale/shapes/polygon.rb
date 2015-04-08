module Scale
  class Polygon
    include Node
    attribute :points, String

    def xml_tag
      :polyline
    end
  end
end
