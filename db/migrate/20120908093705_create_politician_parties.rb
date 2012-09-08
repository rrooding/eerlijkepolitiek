class CreatePoliticianParties < ActiveRecord::Migration
  def change
    create_table :politician_parties do |t|
      t.references :politician
      t.references :party

      t.timestamps
    end
    add_index :politician_parties, :politician_id
    add_index :politician_parties, :party_id
  end
end
