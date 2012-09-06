class Zaken < ActiveRecord::Migration
  def change
    create_table :Zaken, id: false do |t|
      t.string :id, limit: 64, null: false
      t.string :Nummer, limit: 50, null: false
      t.string :Soort, limit: 200
      t.string :Titel, limit: 4000
      t.string :CiteerTitel, limit: 4000
      t.string :Alias, limit: 4000
      t.string :Status, limit: 200
      t.string :Onderwerp, limit: 4000
      t.datetime :DatumStart
      t.integer :Kamer
      t.string :GrondslagVoorhang, limit: 4000
      t.datetime :Termijn
      t.string :Vergaderjaar, limit: 9
      t.string :kamerStukDossierId, limit: 64
      t.integer :VolgNummer, null: false
      t.string :HuidigeBehandelStatus, limit: 1, null: false
      t.boolean :Afgedaan
      t.boolean :GrootProject
      t.datetime :AangemaaktOp
      t.datetime :GewijzigdOp
      t.string :SID_Activiteit, limit: 64, null: false
    end
  end
end
