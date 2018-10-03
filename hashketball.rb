require "pry"

def game_hash
  
  hash = {:home => {:team_name => "Brooklyn Nets",
                   :colors => ["Black","White"],
                   :players => {"Alan Anderson" =>{ number: 0,
                                                   shoe: 16,
                                                   points: 22,
                                                   rebounds:12,
                                                   assists:12,
                                                  steals:3,
                                                  blocks:1,
                                                  slam_dunks:1
                                                                },
                              "Reggie Evans" =>{ number:30,
                                                   shoe:14,
                                                   points: 12,
                                                   rebounds:12,
                                                   assists:12,
                                                  steals:12,
                                                  blocks:12,
                                                  slam_dunks:7
                                                                },
                                                                
                             "Brook Lopez" =>{ number:11,
                                                   shoe:17,
                                                   points:17,
                                                   rebounds:19,
                                                   assists:10,
                                                  steals:3,
                                                  blocks:1,
                                                  slam_dunks:15
                                                                },
                                                                
                            "Mason Plumlee" =>{ number:1,
                                                   shoe:19,
                                                   points:26,
                                                   rebounds:12,
                                                   assists:6,
                                                  steals:3,
                                                  blocks:8,
                                                  slam_dunks:5
                                                                },
                                                                
                            "Jason Terry" =>{ number:31,
                                                   shoe:15,
                                                   points:19,
                                                   rebounds:2,
                                                   assists:2,
                                                  steals:4,
                                                  blocks:11,
                                                  slam_dunks:1
                                                                }
                                                                    
                                                                    }
                                                                      
                                                                      },
  
  
  
          :away => {:team_name => "Charlotte Hornets",
                   :colors => ["Turquoise", "Purple"],
                   :players => {"Jeff Adrien" =>{ number: 4,
                                                   shoe: 18,
                                                   points: 10,
                                                   rebounds:1,
                                                   assists:1,
                                                  steals:2,
                                                  blocks:7,
                                                  slam_dunks:2
                                                                },
                              "Bismak Biyombo" =>{ number:0,
                                                   shoe:16,
                                                   points: 12,
                                                   rebounds:4,
                                                   assists:7,
                                                  steals:7,
                                                  blocks:15,
                                                  slam_dunks:10
                                                                },
                                                                
                             "DeSagna Diop" =>{ number:2,
                                                   shoe:14,
                                                   points:24,
                                                   rebounds:12,
                                                   assists:12,
                                                  steals:4,
                                                  blocks:5,
                                                  slam_dunks:5
                                                                },
                                                                
                            "Ben Gordon" =>{ number:8,
                                                   shoe:15,
                                                   points:33,
                                                   rebounds:3,
                                                   assists:2,
                                                  steals:1,
                                                  blocks:1,
                                                  slam_dunks:0
                                                                },
                                                                
                            "Brendan Haywood" =>{ number:33,
                                                   shoe: 15,
                                                   points:6,
                                                   rebounds:12,
                                                   assists:12,
                                                  steals:22,
                                                  blocks:5,
                                                  slam_dunks:12
                                                                }
                                                                    
                                                                    
                                                                           }
                                                                             }
                                                                              
                                                                              
                                                                               }
 



hash
end



def num_points_scored(name)
  
  game_hash.each do |team_cat, team_stats|
  
    team_stats.each do |tn,data|
      
      if game_hash[team_cat][:players][name] != nil
        
        return game_hash[team_cat][:players][name][:points]
        
      end
    end
  end  
end


def shoe_size(name)
 
  game_hash.each do |team_cat, team_stats|

    team_stats.each do |tn,data|

      if game_hash[team_cat][:players][name] != nil
     
        return game_hash[team_cat][:players][name][:shoe]
      end
    end
  end  
   
end

  
  
  
  
  def team_colors(team_nm)

    game_hash.each do |team_cat, team_stats|

      team_stats.each do |tn,data|

        if game_hash[team_cat][:team_name] == team_nm
    
          return game_hash[team_cat][:colors]
          
        end
      end
    end  
   
end
  
  
  
  
def team_names
    
    array = []
  game_hash.each do |team_cat, team_stats|

    team_stats.each do |tn,data|
    
      if data == game_hash[team_cat][:team_name]
          array.push(game_hash[team_cat][:team_name])
      end
    end
  end
    array
end
  
  
  
  
def player_numbers(team_nm)
  array = []
    game_hash.each do |team_cat, team_stats|

      team_stats.each do |tn,data|
        
        if game_hash[team_cat][tn] == team_nm
        
          game_hash[team_cat][:players].each do |playr_nm, detail|
            
            array.push(game_hash[team_cat][:players][playr_nm][:number])
          end
        end
      end
    end
    
     array  
    
end
  
  
  
  
  def player_stats(player_nm)
    
     game_hash.each do |team_cat, team_stats|
  
    team_stats.each do |tn,data|
      #binding.pry
    if game_hash[team_cat][:players][player_nm] != nil
      return game_hash[team_cat][:players][player_nm]
    end

    end
  end  
   
end


def big_shoe_rebounds
  
  
  playarray = []
  
  game_hash.each do |team_cat, team_stats|

    team_stats.each do |tn,data|
      
      if game_hash[team_cat][:players] != nil
         
        game_hash[team_cat][:players].each do |playr_nm, detail|

          game_hash[team_cat][:players].each do |x| playarray.push(x) 
              
          end
              
        end
       end
       
    end
  end
  
    playarray =playarray.each do |x| (x[1])[:name] = x[0]
    x.delete_at(0)
    end
    
    playarray.flatten!
    
      playarray.max_by{|k| k[:shoe]} [:rebounds]

end
        
  
    
