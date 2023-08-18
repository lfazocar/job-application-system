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
require "test_helper"

class PositionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
