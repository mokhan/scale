describe Scale::Ellipse do
  it { expect(subject.xml_tag).to eql(:ellipse) }

  describe "#attributes" do
    it "includes the x radius" do
      subject.rx = 10
      expect(subject.attributes).to include(rx: 10)
    end

    it "includes the y radius" do
      subject.ry = 10
      expect(subject.attributes).to include(ry: 10)
    end

    it 'includes the x position of the center' do
      subject.cx = 10
      expect(subject.attributes).to include(cx: 10)
    end

    it 'includes the y position of the center' do
      subject.cy = 10
      expect(subject.attributes).to include(cy: 10)
    end
  end
end
