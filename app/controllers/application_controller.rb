class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action ->{
    @title = 'Everything is headcanon.'
    @accent_colors = %w(kalamata-olive-juice-on-a-paper-plate
                        subtly-pretentious-khaki-shorts
                        drowning-in-a-pre-raphaelite-sea
                        a-gentle-wednesday-poo)
  }

  private

  def scrub_html(how_and_what = {})
    restrictive = %w(i b a p q u s br em rt strong mark
                  del ins address cite bdo bdi sub sup
                  small h4 h5 h6 span progress wbr dfn
                  meter time abbr var kbd)
    permissive =  restrictive + %w(blockquote pre code h1
                  h2 h3 img ul ol li dl dt dd hr figure
                  figcaption svg summary details menuitem
                  canvas video source audio track iframe
                  map area samp noscript)
    filter = Rails::Html::PermitScrubber.new
    how = how_and_what.keys.first
    filter.tags = case how
    when :permissively
      permissive
    when :restrictively
      restrictive
    else
      raise 'Invalid option. Pass :permissively or :restrictively as a key with an HTML string value.'
    end
    what = Loofah.fragment(how_and_what[how])
    what.scrub!(filter)
  end

  def error_up(class_instance)
    errors = class_instance.errors
                           .full_messages
                           .map! { |error| { error: error } }
    Hash(json: { errors: errors },
         status: 401)
  end
end
