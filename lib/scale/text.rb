module Scale
  class Text
    include Node
    attribute :x, Integer
    attribute :y, Integer

    def initialize(text, attributes = {})
      @content = text
      super(attributes)
    end

    def xml_tag
      :text_
    end
  end
end
