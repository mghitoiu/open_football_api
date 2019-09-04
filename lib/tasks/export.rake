require 'csv'

csv_file = "tmp/export_teams.csv"

namespace :export do

  task export_teams_to_csv: :environment do

    CSV.open(csv_file, 'w+', col_sep: ',') do |csv|
      # write csv
      Team.all.each do |team|
        csv << [team.name, team.abbreviation, team.manager.name, team.players.map(&:name).join(' ')]
        # team.players.each do |player|
        #   csv << [player.name]
        # end
      end

    end

  end

end
