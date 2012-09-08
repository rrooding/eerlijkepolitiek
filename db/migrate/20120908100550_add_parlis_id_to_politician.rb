class AddParlisIdToPolitician < ActiveRecord::Migration
  def change
    add_column :politicians, :parlis_id, :string, null: false
  end
end
