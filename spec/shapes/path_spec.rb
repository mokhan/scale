describe Scale::Path do
  describe "#move_to" do
    it 'moves' do
      subject.move_to(x: 10, y: 10)
      expected = <<-XML
<?xml version="1.0"?>
<path d="M10 10"/>
      XML
      expect(subject.to_xml).to eql(expected)
    end
  end

  describe "#line_to" do
    it 'draws a line to the x and y coordinate' do
      subject.move_to(x: 10, y: 10)
      subject.line_to(x: 20, y: 20)
      expected = <<-XML
<?xml version="1.0"?>
<path d="M10 10 L 20 20"/>
      XML
      expect(subject.to_xml).to eql(expected)
    end
  end

  describe "#horizontal" do
    before :each do
      subject.move_to(x: 10, y: 10)
    end

    it 'draws a horizontal line' do
      subject.horizontal(90)
      expected = <<-XML
<?xml version="1.0"?>
<path d="M10 10 H 90"/>
      XML
      expect(subject.to_xml).to eql(expected)
    end

    it 'moves horizontally using relative position' do
      subject.horizontal(90, relative: true)
      expected = <<-XML
<?xml version="1.0"?>
<path d="M10 10 h 90"/>
      XML
      expect(subject.to_xml).to eql(expected)
    end
  end

  describe "#vertical" do
    before :each do
      subject.move_to(x: 10, y: 10)
    end

    it 'draws a vertical line' do
      subject.vertical(90)
      expected = <<-XML
<?xml version="1.0"?>
<path d="M10 10 V 90"/>
      XML
      expect(subject.to_xml).to eql(expected)
    end

    it 'draws a vertical line relative to the current position' do
      subject.vertical(90, relative: true)
      expected = <<-XML
<?xml version="1.0"?>
<path d="M10 10 v 90"/>
      XML
      expect(subject.to_xml).to eql(expected)
    end
  end

  describe "#close_path" do
    it 'navigates back to the start' do
      subject.move_to(x: 10, y: 10)
      subject.horizontal(10)
      subject.close_path
      expected = <<-XML
<?xml version="1.0"?>
<path d="M10 10 H 10 Z"/>
      XML
      expect(subject.to_xml).to eql(expected)
    end
  end

  describe "drawing a rectangle" do
    it 'draws the proper rectangle' do
      subject.move_to(x: 10, y: 10)
      subject.horizontal(90)
      subject.vertical(90)
      subject.horizontal(10)
      subject.line_to(x: 10, y: 10)

      expected = <<-XML
<?xml version="1.0"?>
<path d="M10 10 H 90 V 90 H 10 L 10 10"/>
      XML
      expect(subject.to_xml).to eql(expected)
    end
  end
end
