class SampleMailer < ApplicationMailer
  def send_when_update(user)
    @user = user
    mail to:      user.email,
         subject: 'お支払いが完了しました。'
  end
end
