class ChangeTableContactAddColumnHashIdentity < ActiveRecord::Migration
  def change
    add_column :contacts, :hash_identity, :string
  end
end
