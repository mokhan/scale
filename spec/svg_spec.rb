describe Scale::SVG do
  subject { Scale::SVG.new }

  it 'produces and empty xml document' do
    result = subject.to_xml
    expected = <<-XML
<?xml version="1.0"?>
<svg xmlns="http://www.w3.org/2000/svg\" version="1.1" baseProfile="full"/>
    XML
    expect(result).to eql(expected)
  end
end
