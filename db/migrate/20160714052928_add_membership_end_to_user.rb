class AddMembershipEndToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :membership_end, :datetime
  end
end
