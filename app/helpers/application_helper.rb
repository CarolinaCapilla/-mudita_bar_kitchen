module ApplicationHelper
  def cart_count_over_one
    if @cart.line_items.count.positive?
      return "<span>#{@cart.line_items.count}</span>".html_safe
    end
  end

  def cart_has_items
    @cart.line_items.count.positive?
  end
end
