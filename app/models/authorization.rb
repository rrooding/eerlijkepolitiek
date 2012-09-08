class Authorization < ActiveRecord::Base
  belongs_to :user

  def self.find_or_create_by_auth_hash(auth_hash)
    auth = find_or_create_by_provider_and_uid( auth_hash['provider'], auth_hash['uid'])
    auth.create_user_by_auth_hash_extras(auth_hash['extra']['raw_info']) unless auth.user
    auth
  end

  def create_user_by_auth_hash_extras(extras)
    Rails.logger.debug extras.inspect
    create_user({
      first_name: extras['first_name'],
      last_name: extras['last_name'],
      email: extras['email']
    })
  end
end
