class Besluiten < ActiveRecord::Migration
  def change
    create_table :Besluiten, id: false do |t|
      t.string :id, limit: 64, null: false
      t.string :Soort, limit: 4000, null: false
      t.string :StemmingsSoort, limit: 4000
      t.text :VoorstelText, limit: 4000, null: false
      t.text :BesluitText, limit: 4000
      t.datetime :AangemaaktOp
      t.datetime :GewijzigdOp
      t.string :Opmerking, limit: 4000
      t.string :Status, limit: 4000
    end
  end
end
