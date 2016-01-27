module ApplicationHelper
  def format_output(raw_content)
    array = raw_content.split(delimiter)
    parsed_content = array.each_with_index.map do |chunk, index|
      if index.odd?
        format_code chunk
      else
        sanitize chunk
      end
    end
    parsed_content.join
  end

  def page_title
    if @post
      "#{@post.title} | bryanmytko.com"
    elsif @title
      "#{@title} | bryanmytko.com"
    else
      "bryanmytko.com"
    end
  end

  private

  def delimiter
    /\[code\]|\[\/code\]/
  end

  def format_code(string)
    CodeRay.scan(string.strip, :ruby).div(:line_numbers => :table)
  end
end
