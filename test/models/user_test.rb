# == Schema Information
#
# Table name: users
#
#  id                    :uuid             not null, primary key
#  nickname              :string           not null
#  image_url             :string
#  bio                   :string
#  description           :text
#  score                 :integer          default("100"), not null
#  role                  :string           default("regular"), not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  random_fav_topic      :boolean          default("false"), not null
#  random_fav_item_types :string
#  referrer              :string
#  unsubscribe           :boolean          default("false"), not null
#  goodreads_token       :string
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
