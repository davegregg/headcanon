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

  def error_up(class_instance)
    errors = class_instance.errors
                           .full_messages
                           .map! { |error| { error: error } }
    Hash(json: { errors: errors },
         status: 401)
  end
end
