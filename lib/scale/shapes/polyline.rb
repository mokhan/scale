module Scale
  class Polyline
    include Node
    attribute :points, String

    def xml_tag
      :polyline
    end
  end
end
