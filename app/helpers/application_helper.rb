require 'securerandom'
module ApplicationHelper

  def unique_hash_creator
    SecureRandom.urlsafe_base64(4)
  end
  
end
