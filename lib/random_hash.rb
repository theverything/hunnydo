require 'securerandom'

class RandomHash
	attr_reader :random_hash

	def initialize(random_hash = nil)
		@random_hash = random_hash ? random_hash : SecureRandom.urlsafe_base64(4)
	end

	def valid?
		/\A[\w-]{6}\z/.match(@random_hash)
	end
end