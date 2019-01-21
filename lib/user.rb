require 'pry'

class User
	attr_accessor :email
	@@user_count = []

	def initialize(email_to_save)
      @email = email_to_save
      @@user_count << email_to_save
	end

    def self.all
      return @@user_count
    end

end

binding.pry
