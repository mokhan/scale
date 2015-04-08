module Scale
  class Path
    include Node
    attribute :d, String

    def move_to(x:, y:)
      self.d="M#{x} #{y}"
    end

    def line_to(x:, y:)
      self.d = "#{self.d} L #{x} #{y}"
    end

    def horizontal(n)
      self.d = "#{self.d} H #{n}"
    end

    def vertical(n)
      self.d = "#{self.d} V #{n}"
    end

    def xml_tag
      :path
    end
  end
end
