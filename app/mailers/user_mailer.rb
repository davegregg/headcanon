class UserMailer < ApplicationMailer
#dmg_headcanon:conphydod

  def signup(user)
    @user = user
    mail(to: 'davegregg@gmail.com',
         subject: 'Hey, you did it, man. Look at you!')
  end

  def share(post, email)
    @post = post
    mail(to: email,
         subject: 'Something has been shared with you!',
         body: post.body)
  end

end
