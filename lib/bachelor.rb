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
  counter = 0
  data.collect do |season, season_data|
    season_data.collect do |array|
      array= array.to_a
        array.collect do |data|
        if data.include?(hometown)
        counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.collect do |season, season_data|
    season_data.collect do |array|
      array = array.to_a
      array.collect do |thing|
        if thing.find {|x| x == hometown}
        return array[3][1]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  data.collect do |seasons, season_data|
    if seasons.to_s.include?(season)
      season_data.collect do |array|
        array.collect do |things|
          array = array.to_a
          ages << array[1][1].to_i
        end
      end
    end
  end
  ages = ages.reduce {|sum, el| sum + el }.to_f / ages.size
  ages.round
end
