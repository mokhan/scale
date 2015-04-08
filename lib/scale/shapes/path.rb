module Scale
  class Path
    include Node
    attribute :d, String

    def move_to(x:, y:)
      command("M#{x} #{y}")
    end

    def line_to(x:, y:)
      command("L #{x} #{y}")
    end

    def horizontal(n, relative: false)
      command("#{relative ? "h" : "H"} #{n}")
    end

    def vertical(n, relative: false)
      command("#{relative ? "v" : "V"} #{n}")
    end

    def close_path
      command("Z")
    end

    def xml_tag
      :path
    end

    private

    def command(instructions)
      if self.d.nil?
        self.d = instructions
      else
        self.d = "#{self.d} #{instructions}"
      end
    end
  end
end
