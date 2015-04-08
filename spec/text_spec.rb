describe Scale::Text do
  subject { Scale::Text.new("Hello World!") }

  describe "#to_xml" do
    it 'generates the proper xml' do
      subject.x = 10
      subject.y = 10
      expected = <<-XML
<?xml version=\"1.0\"?>
<text x="10" y="10">Hello World!</text>
      XML
      expect(subject.to_xml).to eql(expected)
    end
  end
end
