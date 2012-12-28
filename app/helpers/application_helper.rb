module ApplicationHelper
  # def page_title
  # Argument: title
  # Returns the page title based on whether or not a local page variable
  # (@title) exists.
  def page_title(title)
    if title
      return title + ' | define.io'
    else
      return 'define.io'
    end
  end
end
