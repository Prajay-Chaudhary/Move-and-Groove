# frozen_string_literal: true

class DeviseControllers::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
  #   set_flash_message! :notice, :signed_out if signed_out
  #   yield if block_given?
  #   redirect_to_sign_in_page
  # end

  protected

  # def redirect_to_sign_in_page
  #   require pry; binding.pry
  #   redirect_to new_user_session_path
  # end

  # def after_sign_out_path_for(resource_or_scope)
  #   request.referer
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
