require ("minitest/autorun")
require ("minitest/rg")

require_relative("FootballTeam.rb")

class Test < MiniTest::Test

    def setup()
        players =["Harry Kane", "Dele Alli", "Christian Erikson", "Moussa
            Dembele", "Toby Alderwiereld", "Jan Vertonghen", "Serge Aurier"]

        @team = SpursTeam.new("Spurs", players, "Mauricio Pochettino")
    end

    def test_team_name()
        assert_equal("Spurs", @team.team_name)
    end

    def test_players()
        assert_equal(7, @team.players.count())
    end

    def test_coach()
        assert_equal("Mauricio Pochettino", @team.coach_name)
    end

    def test_update_coach()
        @team.update_coach("Mourinho")
        assert_equal("Mourinho", @team.coach_name())
    end

    def test_add_new_player()
        messi = "Lionel Messi"
        @team.new_player(messi)
        assert_equal(8, @team.players.length())
    end

    def test_find_player()
        assert_equal(true, @team.find_player("Harry Kane"))
    end

    def test_points()
        assert_equal(0, @team.points)
    end

    def test_if_team_wins()
        @team.add_win_points(true)
        assert_equal(3, @team.points)
    end

    def test_if_team_loses()
        @team.add_win_points(false)
        assert_equal(0, @team.points)
    end
end
