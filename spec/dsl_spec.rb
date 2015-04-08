describe Scale::DSL do
  subject { Scale::DSL.new }

  it 'produce the proper svg via the DSL' do
    result = subject.run do |x|
      x.rectangle(width: "100%", height: "100%", fill: "red")
      x.circle(cx: 150, cy: 100, r: 80, fill: "green")
      x.text("SVG", x: 150, y: 125, font_size: 60, text_anchor: 'middle', fill: "white")
    end

    expected = <<-XML
<?xml version="1.0\"?>
<svg xmlns="http://www.w3.org/2000/svg" version="1.1" baseProfile="full">
  <rect width="100%" height="100%" fill="red"/>
  <circle cx="150" cy="100" r="80"/>
  <text x="150" y="125" font-size="60">SVG</text>
</svg>
    XML

    expect(result).to eql(expected)
  end
end
