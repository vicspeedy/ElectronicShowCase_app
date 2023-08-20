class RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  protected

  # Metodo que permite actualizar
  def configure_permitted_parameters
    added_attrs = %i[ email password password_confirmation remember_me
                      name bio ]
    # Cuando se registre
    devise_parameter_sanitizer.permit :sign_up, keys: %i[email password password_confirmation]
    # Inicie session 
    devise_parameter_sanitizer.permit :sign_in, keys: %i[email password remember_me]
    # Actualizar cuenta
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  # Evitar volver a actualizar pass al editar usuario
  def update_resource(resource, params)
    resource.update_without_password(params)
  end
end
