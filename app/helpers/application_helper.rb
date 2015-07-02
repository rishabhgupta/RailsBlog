module ApplicationHelper
	def custom_devise_error_messages!
    return "" if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    sentence = I18n.t("errors.messages.not_saved",
                      :count => resource.errors.count,
                      :resource => resource.class.model_name.human.downcase)

    html = <<-HTML
    <div class="alert alert-error">
      <a class="close" data-dismiss="alert">x</a>
      <ul style="padding:0; margin: 0; padding-left: 8px;">#{messages}</ul>
    </div>
    HTML

    html.html_safe
  end
end
