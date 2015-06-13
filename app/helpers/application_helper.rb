module ApplicationHelper
  def format_output(raw_content)
    array = raw_content.split(delimiter)
    parsed_content = array.each_with_index.map do |chunk, index|
      (index.odd?) ? format_code(chunk) : chunk
    end
    parsed_content.join
  end

  private

  def delimiter
    /\[code\]|\[\/code\]/
  end

  def format_code(string)
    CodeRay.scan(string.strip, :ruby).div(:line_numbers => :table)
  end
end
