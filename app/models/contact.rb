class Contact < ApplicationRecord
    # Validaciones 
    # Start *TODO:
    validates :name,    presence: true
    validates :email,   presence: true, 
                        format: {with: URI::MailTo::EMAIL_REGEXP} # formato correo
    validates :message, presence: true
    # End *TODO:

end
