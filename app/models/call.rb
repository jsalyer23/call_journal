class Call < ActiveRecord::Base
	# The notes need to be added otherwise an error message will be shown to the user
	# The notes also need to have a minimum length of two characters
	validates :notes, presence: true,
                    length: { minimum: 2 }
end
