# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Dir.glob(File.join(Rails.root, 'db', 'seeds', '*.tsv')).each do |file|
  table =  File.basename file, File.extname(file)

  puts "* Importing '#{file}' into '#{table}'"

  ActiveRecord::Base.connection.execute <<-SQL
    LOAD DATA INFILE '#{file}'
    INTO TABLE `#{table}` FIELDS TERMINATED 
    BY '\\t' ENCLOSED BY '' ESCAPED BY '\\\\' LINES TERMINATED 
    BY '\\n' STARTING BY '' IGNORE 1 LINES;
  SQL
end

# Extract people and parties from votes

class StemmingenParser < ActiveRecord::Base
  set_table_name 'Stemmingen'

  def self.convert_actors
    self.all.each do |row|
      party = PoliticalParty.find_or_create_by_parlis_id row.SID_ActorFractie
      unless party.name?
        party.name = row.ActorPartij
        party.save!
      end
      if row.ActorNaam != row.ActorPartij
        actor = Politician.find_or_create_by_parlis_id row.SID_ActorLid
        unless actor.name?
          actor.name = row.ActorNaam
          actor.save!
        end
        unless actor.parties.include? party
          actor.parties << party
        end
      end
    end
  end
end

puts '* Extracting political parties and politicians'
StemmingenParser.convert_actors

