module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Service"
    full_base_title = "Service Management"
    if page_title.empty?
      full_base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
