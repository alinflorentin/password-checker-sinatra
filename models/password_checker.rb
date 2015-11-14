require "pry"
class PasswordChecker
	
	def check_password(email, password)
	#binding.pry
	is_long_enough?(password) && 
	has_characters?(password) && 
	has_name?(email,password) && 
	has_domain?(email, password)
	end
	def is_long_enough?(password)
		password.size >= 7 ? true : false
	end
	def has_characters?(password)
		password.match(/(^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*(_|[^\w])).+$)/) ? true : false
	end
	def has_name?(email, password)
		name = email.split("@")
		password.include?(name.first) ? false : true
 	end
	def has_domain?(email, password)
		email_array = email.split("@")
		domain = email_array.last.split(".")
		password.include?(domain.first) ? false : true
 	end
	
end