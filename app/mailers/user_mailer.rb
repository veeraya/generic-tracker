class UserMailer < ActionMailer::Base
  default from: "veeraya.pupat@gmail.com"

  def notification_email(page)
    @page = page
    binding.pry
    mail(:to => "veeraya.pupat@gmail.com", :subject => "#{@page.name} is changed.")
  end
end
