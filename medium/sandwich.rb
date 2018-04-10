class TextAnalyzer
  def initialize(text = 'sample.txt')
    @text = text
  end

  def process
    File.open(text) { |f| yield(f.read) }
  end

  private

  attr_reader :text
end

analyzer = TextAnalyzer.new
analyzer.process { |text| puts "#{text.split("\n\n").size} paragraphs" }
analyzer.process { |text| puts "#{text.split("\n").size} lines" }
analyzer.process { |text| puts "#{text.split.size} words" }

# 3 paragraphs
# 15 lines
# 126 words
