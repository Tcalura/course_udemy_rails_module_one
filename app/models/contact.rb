class Contact < ActiveRecord::Base
  belongs_to :kind
  has_one :address, dependent: :destroy
  has_many :phones, dependent: :destroy
    
  accepts_nested_attributes_for :address
end
