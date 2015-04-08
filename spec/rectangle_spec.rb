describe Scale::Rectangle do
  it { expect(subject.xml_tag).to eql(:rect) }

  describe "#attributes" do
    it 'includes the x position of the top left corner' do
      subject.x = 10
      expect(subject.attributes).to include(x: 10)
    end

    it 'includes the y position of the top left corner' do
      subject.y = 10
      expect(subject.attributes).to include(y: 10)
    end

    it 'includes the width' do
      subject.width = "100%"
      expect(subject.attributes).to include(width: "100%")
    end

    it 'includes the height' do
      subject.height = "100%"
      expect(subject.attributes).to include(height: "100%")
    end

    it 'includes the x radius of the corners' do
      subject.rx = 10
      expect(subject.attributes).to include(rx: 10)
    end

    it 'includes the y radius of the corners' do
      subject.ry = 10
      expect(subject.attributes).to include(ry: 10)
    end
  end
end
