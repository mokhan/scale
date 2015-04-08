module Scale
  class DSL
    def run
      DSLBuilder.new.tap do |builder|
        yield builder
      end.to_xml
    end
  end

  class DSLCommand
    def initialize(name, args, block)
      @name = name
      @args = args
      @block = block
    end

    def run(svg)
      type = Kernel.const_get("Scale::#{@name.to_s.capitalize}")
      svg.add(type.new(*@args))
    end
  end

  class DSLBuilder
    def initialize(commands = [])
      @commands = commands
    end

    def method_missing(name, *args, &block)
      @commands.push(DSLCommand.new(name, args, block))
    end

    def to_xml
      svg = SVG.new
      @commands.each do |command|
        command.run(svg)
      end
      svg.to_xml
    end
  end
end
