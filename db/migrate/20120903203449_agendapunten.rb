class Agendapunten < ActiveRecord::Migration
  def change
    create_table :Agendapunten, id: false do |t|
      t.string :id, limit: 64, null: false
      t.string :Nummer, limit: 50, null: false
      t.string :Onderwerp, limit: 4000, null: false
      t.datetime :Aanvangstijd
      t.datetime :EindTijd
      t.integer :Volgorde
      t.string :Rubriek, limit: 4000
      t.string :Noot, limit: 4000
      t.string :Status, limit: 200
      t.datetime :AangemaaktOp
      t.datetime :GewijzigdOp
      t.string :SID_Activiteit, limit: 64, null: false
    end
  end
end
