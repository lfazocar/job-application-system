# == Schema Information
#
# Table name: applications
#
#  id          :bigint           not null, primary key
#  user_id     :bigint           not null
#  position_id :bigint           not null
#  new         :boolean          default(TRUE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Application < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :position
end
