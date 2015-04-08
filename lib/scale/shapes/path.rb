module Scale
  class Path
    include Node
    attribute :d, String

    def xml_tag
      :path
    end
  end
end
