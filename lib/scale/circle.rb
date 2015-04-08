module Scale
  class Circle
    include Node
    include Virtus.model
    attribute :cx, Integer
    attribute :cy, Integer
    attribute :r, Integer

    def xml_tag
      :circle
    end

    def attributes
      super.delete_if { |key, value| value.nil? }
    end
  end
end
