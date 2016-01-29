module ApplicationHelper
  SITE_TITLE = 'www.bryanmytko.com'

  def format_output(raw_content)
    array = raw_content.split(delimiter)
    parsed_content = array.each_with_index.map do |chunk, index|
      if index.odd?
        format_code chunk
      else
        redcarpetize chunk
      end
    end

    parsed_content.join
  end

  def page_title
    if @post
      "#{@post.title} | #{SITE_TITLE}"
    elsif @title
      "#{@title} | #{SITE_TITLE}"
    else
      SITE_TITLE
    end
  end

  def admin_new_button
    if session["current_admin_user_id"]
      raw "<li>#{ link_to "New Entry", :new_admin_post } </li>"
    end
  end

  def admin_edit_button
    if session["current_admin_user_id"]
      link_to "[edit]", :edit_admin_post
    end
  end

  def redcarpetize(content)
    renderer = Redcarpet::Render::HTML
    markdown = Redcarpet::Markdown.new(renderer, extensions = {})
    markdown.render(content)
  end

  private

  def delimiter
    /\[code\]|\[\/code\]/
  end

  def format_code(string)
    CodeRay.scan(string.strip, :ruby).div(:line_numbers => :table)
  end
end
