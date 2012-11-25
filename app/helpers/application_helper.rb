module ApplicationHelper
  # def page_title
  # Argument: title
  # Returns the page title based on whether or not a local page variable
  # (@title) exists.
  def page_title(title)
    if title
      return title + ' | Define.IO'
    else
      return 'Define.IO'
    end
  end
end
