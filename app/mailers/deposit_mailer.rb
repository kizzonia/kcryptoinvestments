class DepositMailer < ApplicationMailer
  default :from => "support@kcryptoinvestments.com"
  def deposit_email(user, deposit)
    @user = user
    @deposit = deposit
     mail(to: "support@kcryptoinvestments.com", subject: 'deposit Request')
  end
end
