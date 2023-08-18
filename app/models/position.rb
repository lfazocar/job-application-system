# == Schema Information
#
# Table name: positions
#
#  id         :bigint           not null, primary key
#  title      :string
#  info       :text
#  available  :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Position < ApplicationRecord
  # Associations
  has_many :applications, dependent: :destroy

  # Validations
  validates :title, presence: true
end
