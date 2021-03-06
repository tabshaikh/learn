# == Schema Information
#
# Table name: items
#
#  id                  :uuid             not null, primary key
#  name                :string           not null
#  item_type_id        :string           not null
#  estimated_time      :integer
#  time_unit           :string           default("minutes"), not null
#  required_expertise  :integer
#  idea_set_id         :uuid             not null
#  user_id             :uuid             not null
#  year                :integer
#  image_url           :string
#  inspirational_score :integer
#  educational_score   :integer
#  challenging_score   :integer
#  entertaining_score  :integer
#  visual_score        :integer
#  interactive_score   :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  typical_age_range   :string
#  description         :text
#  metadata            :json             not null
#
# Indexes
#
#  index_items_on_idea_set_id   (idea_set_id)
#  index_items_on_item_type_id  (item_type_id)
#  index_items_on_user_id       (user_id)
#  trgm_items_name_indx         (name) USING gist
#
# Foreign Keys
#
#  fk_rails_...  (idea_set_id => idea_sets.id)
#  fk_rails_...  (item_type_id => item_types.id)
#  fk_rails_...  (user_id => users.id)
#

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test "search" do
    assert_equal Item.search("firstitem").count, 1
  end

  test "advanced search" do
  	assert_equal Item.advanced_search(nil,nil,nil,nil).count, Item.all.count
  end
end
