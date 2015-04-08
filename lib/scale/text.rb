module Scale
  class Text
    include Node
    attribute :x, Integer
    attribute :y, Integer

    attribute :font_family, String
    attribute :font_style, String
    attribute :font_weight, String
    attribute :font_variant, String
    attribute :font_stretch, String
    attribute :font_size, String
    attribute :font_size_adjust, String
    attribute :kerning, String
    attribute :letter_spacing, String
    attribute :word_spacing, String
    attribute :text_decoration, String

    def initialize(text, attributes = {})
      @content = text
      super(attributes)
    end

    def xml_tag
      :text_
    end
  end
end
