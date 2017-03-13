class ApplicationController < ActionController::Base
  # TODO add users and authentication
  # protect_from_forgery with: :exception

  before_action ->{
    @title = 'Everything is headcanon.'
    @accent_colors = %w(kalamata-olive-juice-on-a-paper-plate
                        subtly-pretentious-khaki-shorts
                        drowning-in-a-pre-raphaelite-sea
                        a-gentle-wednesday-poo)
  }

  private

  def scrub_html(options)
    restrictive = %w(i b a p q u s br em rt strong mark
                  del ins address cite bdo bdi sub sup
                  small h4 h5 h6 span progress wbr dfn
                  meter time abbr var kbd)
    permissive =  restrictive +
                  %w(blockquote pre code h1 h2 h3 img ul
                  ol li dl dt dd hr figure figcaption svg
                  summary details menuitem canvas video
                  source audio track iframe map area samp
                  noscript)
    filter = Rails::Html::PermitScrubber.new
    filter.tags = case options.keys.first
    when :permissively
      permissive
    when :restrictively
      restrictive
    else
      return 'Invalid symbol. Pass :permissively or :restrictively as keys with an HTML string as its value.'
    end
    html.scrub(filter).to_s
  end

  def error_up(class_instance)
    errors = class_instance.errors
                           .full_messages
                           .map! { |error| { error: error } }
    Hash(json: { errors: errors },
         status: 401)
  end
end
