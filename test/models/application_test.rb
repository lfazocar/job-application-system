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
require "test_helper"

class ApplicationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
