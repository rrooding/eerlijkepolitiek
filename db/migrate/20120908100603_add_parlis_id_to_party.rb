class AddParlisIdToParty < ActiveRecord::Migration
  def change
    add_column :political_parties, :parlis_id, :string, null: false
  end
end
