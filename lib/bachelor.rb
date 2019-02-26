def get_first_name_of_season_winner(data, season)
name = " "
  data.collect do |seasons, season_data|
    if seasons.to_s.include?(season)
        season_data.collect do |array|
          array = array.to_a
            array.collect do |things|
              if things.include?("Winner")
              name = array[0][1]
              end
          end
        end
      end
    end
    name.split(" ").first
  end

def get_contestant_name(data, occupation)
  name = " "
  data.collect do |seasons, season_data|
    season_data.collect do |array|
      array = array.to_a
      array.collect do |data|
        if data.include?(occupation)
        name = array[0][1]
        end
      end
    end
  end 
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
