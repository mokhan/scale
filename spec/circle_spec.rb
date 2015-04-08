
describe Scale::Circle do
  it { expect(subject.xml_tag).to eql(:circle) }

  describe "#attributes" do
    it "includes the radius" do
      subject.r = 10
      expect(subject.attributes).to include(r: 10)
    end

    it "includes the x position of the center of the circle" do
      subject.cx = 10
      expect(subject.attributes).to include(cx: 10)
    end

    it "includes the y position of the center of the circle" do
      subject.cy = 10
      expect(subject.attributes).to include(cy: 10)
    end

    it "skips attributes that are not specified" do
      expect(subject.attributes).to be_empty
    end
  end
end
