class Users::SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    user = User.find_for_authentication(:email => resource.email)
    if resource.id != nil
      render json: { message: "You are logged #{resource.email}."}, status: :ok
    else
    render json: { message: "Invalid user and password."}, status: :ok
    end
  end

  def respond_to_on_destroy
    log_out_success && return if current_user

    log_out_failure
  end

  def log_out_success
    render json: { message: "You are logged out." }, status: :ok
  end

  def log_out_failure
    render json: { message: "Hmm nothing happened."}, status: :unauthorized
  end
end