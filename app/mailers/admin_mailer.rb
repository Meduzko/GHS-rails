class AdminMailer < Devise::Mailer
    default from: 'meduzko95@gmail.com'
    layout 'mailer'

    def new_user_waiting_for_approval(email)
      @email = email
      mail(to: 'apanchuk59@gmail.com', subject: 'New User Awaiting Admin Approval')
    end
end
