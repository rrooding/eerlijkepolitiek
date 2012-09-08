class AddIndexToVotes < ActiveRecord::Migration
  def change
    add_index :Stemmingen, :Soort
    add_index :Stemmingen, :SID_ActorLid
    add_index :Stemmingen, :SID_ActorFractie
  end
end
