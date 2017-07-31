class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    assign_role(resource)
    if session[:new_payment_path]
      path = session[:new_payment_path]
      session.delete :new_payment_path
      return path
    end
    user_path(resource)
  end

  def after_update_path_for(resource)
    user_path(resource)
  end

  private

  def assign_role(user)
    user.roles.create(permission: Role::MEMBER)
  end
end