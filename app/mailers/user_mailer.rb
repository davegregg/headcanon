class UserMailer < ApplicationMailer
#dmg_headcanon:conphyod

  def signup(user)
    @user = user
    mail(to: 'davegregg@gmail.com',
         subject: 'Hey, you did it, man. Look at you!')
  end

end
