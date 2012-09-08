# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120908122428) do

  create_table "Activiteiten", :id => false, :force => true do |t|
    t.string   "id",                :limit => 64,   :null => false
    t.string   "Nummer",            :limit => 50,   :null => false
    t.string   "Onderwerp",         :limit => 4000
    t.string   "Soort",             :limit => 4000
    t.string   "DatumSoort",        :limit => 200
    t.datetime "Aanvangstijd"
    t.datetime "EindTijd"
    t.string   "Locatie",           :limit => 4000
    t.boolean  "Besloten"
    t.string   "Status",            :limit => 200
    t.string   "Vergaderjaar",      :limit => 200
    t.string   "Kamer",             :limit => 200
    t.string   "Noot",              :limit => 4000
    t.datetime "AangemaaktOp"
    t.datetime "GewijzigdOp"
    t.string   "VRSNummer",         :limit => 4000
    t.string   "Voortouwnaam",      :limit => 200
    t.string   "Voortouwafkorting", :limit => 50
    t.string   "Voortouwkortenaam", :limit => 50
  end

  create_table "Agendapunten", :id => false, :force => true do |t|
    t.string   "id",             :limit => 64,   :null => false
    t.string   "Nummer",         :limit => 50,   :null => false
    t.string   "Onderwerp",      :limit => 4000, :null => false
    t.datetime "Aanvangstijd"
    t.datetime "EindTijd"
    t.integer  "Volgorde"
    t.string   "Rubriek",        :limit => 4000
    t.string   "Noot",           :limit => 4000
    t.string   "Status",         :limit => 200
    t.datetime "AangemaaktOp"
    t.datetime "GewijzigdOp"
    t.string   "SID_Activiteit", :limit => 64,   :null => false
  end

  create_table "Besluiten", :id => false, :force => true do |t|
    t.string   "id",             :limit => 64,   :null => false
    t.string   "Soort",          :limit => 4000, :null => false
    t.string   "StemmingsSoort", :limit => 4000
    t.text     "VoorstelText",                   :null => false
    t.text     "BesluitText"
    t.datetime "AangemaaktOp"
    t.datetime "GewijzigdOp"
    t.string   "Opmerking",      :limit => 4000
    t.string   "Status",         :limit => 4000
  end

  create_table "Zaken", :id => false, :force => true do |t|
    t.string   "id",                    :limit => 64,   :null => false
    t.string   "Nummer",                :limit => 50,   :null => false
    t.string   "Soort",                 :limit => 200
    t.string   "Titel",                 :limit => 4000
    t.string   "CiteerTitel",           :limit => 4000
    t.string   "Alias",                 :limit => 4000
    t.string   "Status",                :limit => 200
    t.string   "Onderwerp",             :limit => 4000
    t.datetime "DatumStart"
    t.integer  "Kamer"
    t.string   "GrondslagVoorhang",     :limit => 4000
    t.datetime "Termijn"
    t.string   "Vergaderjaar",          :limit => 9
    t.string   "kamerStukDossierId",    :limit => 64
    t.integer  "VolgNummer",                            :null => false
    t.string   "HuidigeBehandelStatus", :limit => 1,    :null => false
    t.boolean  "Afgedaan"
    t.boolean  "GrootProject"
    t.datetime "AangemaaktOp"
    t.datetime "GewijzigdOp"
    t.string   "SID_Activiteit",        :limit => 64,   :null => false
  end

  create_table "authorizations", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "political_parties", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "parlis_id",  :null => false
  end

  create_table "politician_parties", :force => true do |t|
    t.integer  "politician_id"
    t.integer  "party_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "politician_parties", ["party_id"], :name => "index_politician_parties_on_party_id"
  add_index "politician_parties", ["politician_id"], :name => "index_politician_parties_on_politician_id"

  create_table "politicians", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "parlis_id",  :null => false
  end

  create_table "stemmingen", :id => false, :force => true do |t|
    t.string   "id",               :limit => 64,   :null => false
    t.string   "Soort",            :limit => 4000, :null => false
    t.integer  "FractieGrootte"
    t.integer  "FractieStemmen"
    t.string   "ActorNaam",        :limit => 200,  :null => false
    t.string   "ActorPartij",      :limit => 200,  :null => false
    t.boolean  "Vergissing"
    t.datetime "AangemaaktOp"
    t.datetime "GewijzigdOp"
    t.string   "SID_ActorLid",     :limit => 200,  :null => false
    t.string   "SID_ActorFractie", :limit => 200,  :null => false
    t.string   "SID_Besluit",      :limit => 64,   :null => false
  end

  add_index "stemmingen", ["SID_ActorFractie"], :name => "index_Stemmingen_on_SID_ActorFractie"
  add_index "stemmingen", ["SID_ActorLid"], :name => "index_Stemmingen_on_SID_ActorLid"
  add_index "stemmingen", ["Soort"], :name => "index_Stemmingen_on_Soort", :length => {"Soort"=>255}

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "gender"
    t.string   "link"
    t.string   "username"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
