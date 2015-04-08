describe Scale::Node do
  class FakeNode
    include Scale::Node
    attribute :x, Integer
    attribute :y, Integer
    attribute :font_size_adjust, Float

    def xml_tag
      :fake
    end
  end

  subject { FakeNode.new }

  describe "#xml_attributes" do
    it "skips attributes that are not specified" do
      expect(subject.xml_attributes).to be_empty
    end
  end

  describe "#add" do
    it 'adds a child node' do
      child = Object.new
      subject.add(child)
      expect(subject).to include(child)
    end
  end

  describe "#to_xml" do
    it 'generates the full xml tree' do
      grandchild = Scale::Rectangle.new(width: "100%", height: "100%", fill: "blue")
      child = Scale::Rectangle.new(width: "100%", height: "100%", fill: "red")
      child.add(grandchild)
      subject.add(child)

      expected = <<-XML
<?xml version="1.0"?>
<fake>
  <rect width="100%" height="100%" fill="red">
    <rect width="100%" height="100%" fill="blue"/>
  </rect>
</fake>
      XML
      expect(subject.to_xml).to eql(expected)
    end

    it 'replaces underscores in attribute names' do
      subject.font_size_adjust = 0.5
      expected = <<-XML
<?xml version="1.0"?>
<fake font-size-adjust="0.5"/>
      XML
      expect(subject.to_xml).to eql(expected)
    end
  end
end
