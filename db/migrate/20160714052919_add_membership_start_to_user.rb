class AddMembershipStartToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :membership_start, :datetime
  end
end
