class NewTeamMailer < ApplicationMailer
  def new_team
    @teams = Team.all
    mail(
      to: 'some_email_address@gmail.com',
      bcc: '',
      subject: 'Teams'
      )
    end
  end
