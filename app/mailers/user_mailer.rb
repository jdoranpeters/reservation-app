class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #

  default from: "jeremydoranpeters@gmail.com"

  def signup_confirmation(admin, first_name, last_name, email, phone, id)
  	@admin = 'jeremydoranpeters@gmail.com' #needs to be changed to @admin*
    @first_name = first_name
    @last_name = last_name
    @email = email
    @phone = phone
    @id = id

    mail to: 'jeremydoranpeters@gmail.com', subject: "New User!"

  end

  def reservation_confirmation(reservation)
    @reservation = reservation

    mail to: @reservation.user.email, subject: "Reservation Confirmation"

  end
end
