class Activiteiten < ActiveRecord::Migration
  def change
    create_table :Activiteiten, id: false do |t|
      t.string :id, limit: 64, null: false
      t.string :Nummer, limit: 50, null: false
      t.string :Onderwerp, limit: 4000
      t.string :Soort, limit: 4000
      t.string :DatumSoort, limit: 200
      t.datetime :Aanvangstijd
      t.datetime :EindTijd
      t.string :Locatie, limit: 4000
      t.boolean :Besloten
      t.string :Status, limit: 200
      t.string :Vergaderjaar, limit: 200
      t.string :Kamer, limit: 200
      t.string :Noot, limit: 4000
      t.datetime :AangemaaktOp
      t.datetime :GewijzigdOp
      t.string :VRSNummer, limit: 4000
      t.string :Voortouwnaam, limit: 200
      t.string :Voortouwafkorting, limit: 50
      t.string :Voortouwkortenaam, limit: 50
    end
  end
end
