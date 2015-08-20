module ApplicationHelper
  def csrf_tag
    <<-HTML.html_safe
      <input
        type='hidden'
        name='authenticity_token'
        value='#{form_authenticity_token}'>
    HTML
  end

  def maps_link_tag
    <<-HTML.html_safe
      <script type="text/javascript"
              src="https://maps.googleapis.com/maps/api/js?#{maps_api_key}">
      </script>
    HTML
  end

  def maps_api_key
    Rails.env.production? ? ENV['maps_js_browser_key'] : ''
  end
end
