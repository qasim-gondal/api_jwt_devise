# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def respond_with(resource, options = {})
    if resource.persisted?
      render json: {
               status: { code: 200, message: "Signed up successfully ", data: resource.to_json },
             }
    else
      render json: { status: { message: "user not created", errors: resource.errors.full_messages }, status: :unprocessable_entity }
    end
  end
end
