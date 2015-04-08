describe Scale::SVG do
  subject { Scale::SVG.new }

  it 'produces and empty xml document' do
    expected = <<-XML
<?xml version="1.0"?>
<svg xmlns="http://www.w3.org/2000/svg\" version="1.1" baseProfile="full"/>
    XML
    expect(subject.to_xml).to eql(expected)
  end

  it 'applies a width' do
    subject.width = rand(1000)
    expected = <<-XML
<?xml version="1.0"?>
<svg xmlns="http://www.w3.org/2000/svg\" version="1.1" baseProfile="full" width="#{subject.width}"/>
    XML
    expect(subject.to_xml).to eql(expected)
  end

  it 'applies a height' do
    subject.height = rand(1000)
    expected = <<-XML
<?xml version="1.0"?>
<svg xmlns="http://www.w3.org/2000/svg\" version="1.1" baseProfile="full" height="#{subject.height}"/>
    XML
    expect(subject.to_xml).to eql(expected)
  end
end
