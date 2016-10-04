class Member < ActiveRecord::Base

	

	#attr_accessible :email, :password, :password_confirmation
	   
	validates_presence_of :email
	  validates_uniqueness_of :email 

	  #validates_length_of     :email, :within => 1..50
 
	  validates_format_of   :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	#validates_presence_of :password
	  #validates_length_of   :password, :within => 4..40, :allow_nil => true

	validates_presence_of :password, :confirmation => true
      validates_confirmation_of :password, :password_confirmation => true


  def self.authenticate(email, password)
    member = find_by_email(email)
    if user && member.password == BCrypt::Engine.secret(password, user.password)
      
    else
      nil
    end
  end
	

	

	   


	# def self.authenticate(email, password)
	#   member = find_by_email(email)
	#   if member && member.password = password, member.password
	#     member
	#   else
	#     nil
	#   end
	# end



	  # def encrypt_password
	  #   if password.present?
	  #     self.password = generate
	  #     self.password_confirmation = BCrypt::Engine.secret(password, password_confirmation)
	  #   end
	  # end




	
end