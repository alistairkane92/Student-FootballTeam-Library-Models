class SpursTeam

    def initialize(team_name, players, coach)
        @team_name = team_name
        @players = players
        @coach = coach
        @points = 0
    end

        def team_name
            return @team_name
        end

        def players
            return @players
        end

        def coach_name
            return @coach
        end

        def update_coach(new_coach)
            @coach = new_coach
        end

        def new_player(player)
            return @players << player
        end

        def find_player(name)
            for player in @players
                if player == name
                    return true
                end
            end
            return false
        end

        def points
            return @points
        end

        def add_win_points(result)
            return @points += 3 if result == true
        end
end
