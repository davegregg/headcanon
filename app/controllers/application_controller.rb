class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def error_up(class_instance)
    errors = class_instance.errors
                           .full_messages
                           .map! { |error| { error: error } }
    Hash(json: { errors: errors },
         status: 401)
  end
end
