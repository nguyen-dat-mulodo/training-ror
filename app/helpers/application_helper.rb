module ApplicationHelper
  def get_url_return
    session[:return]=request.original_url unless session[:return]
  end
  #TODO: process for hide link cart
  # def hidden_link(condition, attributes = {}, &block)
  #   if condition
  #     # attributes["style"] = "display: none"
  #   end
  #   content_tag("li", attributes, &block)
  # end
end
