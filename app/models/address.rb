# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  street     :string
#  city       :string
#  state      :string
#  contact_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  zipcode    :string
#

class Address < ActiveRecord::Base
  require 'correios-cep'

  Correios::CEP.configure do |config|
    config.request_timeout = 4 # seconds
  end# == Schema Information
  #
  # Table name: phones
  #
  #  id         :integer          not null, primary key
  #  phone      :string
  #  contact_id :integer
  #  created_at :datetime         not null
  #  updated_at :datetime         not null
  #
  
  

  belongs_to :contact


  # validate :zipcode, 
  #             presence: true,
  #             numericality: { only_integer: true },
  #             length: { is: 8 },
  #             if: return_address?


  # def return_address?
  #   # With "get" class method
  #   address = Correios::CEP::AddressFinder.get(this.zipcode.to_s)
    
  # end

end
