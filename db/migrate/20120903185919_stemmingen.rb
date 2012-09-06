class Stemmingen < ActiveRecord::Migration
  def change
    create_table :Stemmingen, id: false do |t|
      t.string :id, limit: 64, null: false
      t.string :Soort, limit: 4000, null: false
      t.integer :FractieGrootte
      t.integer :FractieStemmen
      t.string :ActorNaam, limit: 200, null: false
      t.string :ActorPartij, limit: 200, null: false
      t.boolean :Vergissing, default: nil
      t.datetime :AangemaaktOp
      t.datetime :GewijzigdOp
      t.string :SID_ActorLid, limit: 200, null: false
      t.string :SID_ActorFractie, limit: 200, null: false
      t.string :SID_Besluit, limit: 64, null: false
    end
  end
end
