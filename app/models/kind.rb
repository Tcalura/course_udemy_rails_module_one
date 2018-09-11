# == Schema Information
#
# Table name: kinds
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Kind < ActiveRecord::Base
  has_many :contact
end
