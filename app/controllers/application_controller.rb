class ApplicationController < ActionController::Base
  # TODO add users and authentication
  # protect_from_forgery with: :exception

  before_action ->{
    @title = 'Everything is headcanon.'
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
