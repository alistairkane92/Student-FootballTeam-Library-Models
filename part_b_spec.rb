require ("minitest/autorun")
require ("minitest/rg")

require_relative("./part_b.rb")

class Test < MiniTest::Test

    def test_team_name
        team = SpursTeam.new("Spurs", ["Harry Kane", "Dele Alli", "Christian Erikson", "Moussa
            Dembele", "Toby Alderwiereld", "Jan Vertonghen", "Serge Aurier"], ["Mauricio Pochettino"], 0)

        assert_equal("Spurs", team.team_name)
    end

    def test_players
        team = SpursTeam.new("Spurs", ["Harry Kane", "Dele Alli", "Christian Erikson", "Moussa
            Dembele", "Toby Alderwiereld", "Jan Vertonghen", "Serge Aurier"], ["Mauricio Pochettino"], 0)

        assert_equal(["Harry Kane", "Dele Alli", "Christian Erikson", "Moussa
            Dembele", "Toby Alderwiereld", "Jan Vertonghen", "Serge Aurier"], team.player_names)
    end

    def test_coach
        team = SpursTeam.new("Spurs", ["Harry Kane", "Dele Alli", "Christian Erikson", "Moussa
            Dembele", "Toby Alderwiereld", "Jan Vertonghen", "Serge Aurier"], "Mauricio Pochettino", 0)

        assert_equal("Mauricio Pochettino", team.coach_name)
    end

    def test_update_coach
        team = SpursTeam.new("Spurs", ["Harry Kane", "Dele Alli", "Christian Erikson", "Moussa
            Dembele", "Toby Alderwiereld", "Jan Vertonghen", "Serge Aurier"], ["Mauricio Pochettino"], 0)

        team.update_coach("Mourinho")

        assert_equal("Mourinho", team.coach_name())
    end

    def test_add_new_player
        team = SpursTeam.new("Spurs", ["Harry Kane", "Dele Alli", "Christian Erikson", "Moussa
            Dembele", "Toby Alderwiereld", "Jan Vertonghen", "Serge Aurier"], ["Mauricio Pochettino"], 0)

        team.new_player("Lionel Messi", ["Harry Kane", "Dele Alli", "Christian Erikson", "Moussa
            Dembele", "Toby Alderwiereld", "Jan Vertonghen", "Serge Aurier"])

        assert_equal(["Harry Kane", "Dele Alli", "Christian Erikson", "Moussa
            Dembele", "Toby Alderwiereld", "Jan Vertonghen", "Serge Aurier", "Lionel Messi"], team.player_names)
    end

    def test_find_player
        team = SpursTeam.new("Spurs", ["Harry Kane", "Dele Alli", "Christian Erikson", "Moussa
            Dembele", "Toby Alderwiereld", "Jan Vertonghen", "Serge Aurier"], "Mauricio Pochettino", 0)

        assert_equal(true, team.find_player("Harry Kane", ["Harry Kane", "Dele Alli", "Christian Erikson", "Moussa
            Dembele", "Toby Alderwiereld", "Jan Vertonghen", "Serge Aurier"]))
    end


    def test_points
        team = SpursTeam.new("Spurs", ["Harry Kane", "Dele Alli", "Christian Erikson", "Moussa
            Dembele", "Toby Alderwiereld", "Jan Vertonghen", "Serge Aurier"], "Mauricio Pochettino", 0)

        assert_equal(0, team.points)
    end

    def test_add_or_remove_points__add
        team = SpursTeam.new("Spurs", ["Harry Kane", "Dele Alli", "Christian Erikson", "Moussa
            Dembele", "Toby Alderwiereld", "Jan Vertonghen", "Serge Aurier"], "Mauricio Pochettino", 0)

        win = true
        team.add_or_remove_points(3, win)

        assert_equal(3, team.points)
    end
end
