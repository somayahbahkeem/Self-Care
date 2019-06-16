class AddUserToInfoSelfCare < ActiveRecord::Migration[5.2]
  def change
    add_reference :info_self_cares, :user, foreign_key: true
  end
end
