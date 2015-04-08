require 'virtus'

module Scale
  class Rectangle
    include Node
    include Virtus.model
    attribute :width, String
    attribute :height, String
    attribute :fill, String
    attribute :x, Integer
    attribute :y, Integer
    attribute :rx, Integer
    attribute :ry, Integer

    def xml_tag
      :rect
    end

    def attributes
      super.delete_if { |key, value| value.nil? }
    end
  end
end
