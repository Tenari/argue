class User < ActiveRecord::Base
  devise :omniauthable, :omniauth_providers => [:facebook]

  def self.from_omniauth(auth)
    user = where(provider: auth.provider, uid: auth.uid).first_or_create
    user.name = auth.info.name
    user.email = auth.info.email
    user.save

    user
  end
end
