class WithdrawMailer < ApplicationMailer
  default :from => "support@kcryptoinvestments.com"
  def withdraw_email(user, withdraw)
    @user = user
    @withdraw = withdraw
     mail(to: "support@kcryptoinvestments.com", subject: 'withdraw Request')
  end
end
