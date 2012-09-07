class Authorization < ActiveRecord::Base
  belongs_to :user

  def self.find_or_create_by_auth_hash(auth_hash)
    auth = find_or_create_by_provider_and_uid( auth_hash['provider'], auth_hash['uid'])
    auth.create_user_by_auth_hash(auth_hash) unless auth.user
    auth
  end

  def create_user_by_auth_hash(auth_hash)
    user = build_user({name: 'Ralph'})
    user.save
  end
end
