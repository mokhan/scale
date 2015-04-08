module Scale
  class Path
    include Node
    attribute :d, String

    def move_to(x:, y:)
      self.d="M#{x} #{y}"
    end

    def xml_tag
      :path
    end
  end
end
