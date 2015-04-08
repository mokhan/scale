describe Scale::Path do
  it 'moves' do
    subject.move_to(x: 10, y: 10)
    expected = <<-XML
<?xml version="1.0"?>
<path d="M10 10"/>
    XML
    expect(subject.to_xml).to eql(expected)
  end
end
