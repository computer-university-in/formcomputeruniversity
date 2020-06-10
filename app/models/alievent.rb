
class Alievent < ActiveRecord::Base
	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
        validates :number, :presence => true,
          :numericality => true,:length => { :minimum => 10, :maximum =>15 }
end
