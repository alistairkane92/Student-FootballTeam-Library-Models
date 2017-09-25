class SpursTeam

    def initialize(team_name, players, coach, points)
        @team_name = team_name
        @players = players
        @coach = coach
        @points = 0
    end

        def team_name
            return @team_name
        end

        def player_names
            return @players
        end

        def coach_name
            return @coach
        end

        def update_coach(new_coach)
            return @coach = (new_coach)
        end

        def new_player(name, players)
            return @players << name
        end

        def find_player(name, players)
            for player in @players
                if player == name
                    return true
                end
            end
        end

        def points
            return @points
        end


        def add_or_remove_points(value, result)
            @points += value if result == true
        end
end
