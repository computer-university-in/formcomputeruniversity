class Wdtmz < ActiveRecord::Base
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } , uniqueness: { value: true , message: ":You have already filled the form, Thank you so much!" }
  validates :number, :presence => true,
    :numericality => true,:length => { :minimum => 10, :maximum =>15 }
end
