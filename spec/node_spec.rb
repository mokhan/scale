describe Scale::Node do
  class FakeNode
    include Scale::Node
    attribute :x, Integer
    attribute :y, Integer
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
end
