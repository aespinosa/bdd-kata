require 'test_helper'

module MarkerSuite
  class ExactMatchesTest < Test::Unit::TestCase
    def test__with_no_matches
      marker = Marker.new "1234", "5555"

      assert_equal 0, marker.exact_matches
    end

    def test_exact_matches_with_1_exact_match
      marker = Marker.new "1234", "1555"

      assert_equal 1, marker.exact_matches
    end

    def test_with_1_number_and_1_exact_match
      marker = Marker.new "1234", "2535"
      assert_equal 1, marker.exact_matches
    end

    def test_4_exact_matches
      marker = Marker.new "1234", "1234"

      assert_equal 4, marker.exact_matches
    end
  end

  class NumberMatchesTest < Test::Unit::TestCase
    def test_number_matches_with_no_matches
      marker = Marker.new "1234", "5555"

      assert_equal 0, marker.number_matches
    end

    def test_number_matches_with_1_match
      marker = Marker.new "1234", "2555"

      assert_equal 1, marker.number_matches
    end

    def test_number_matches_with_1_exact_match
      marker = Marker.new "1234", "1555"

      assert_equal 0, marker.number_matches
    end

    def test_with_2_number_matches
      marker = Marker.new "1234", "2355"

      assert_equal 2, marker.number_matches
    end

    def test_number_matches_with_1_number_and_1_exact_match
      marker = Marker.new "1234", "2535"

      assert_equal 1, marker.number_matches
    end

    def test_with_1_exact_match_duplicated
      marker = Marker.new "1234", "1155"

      assert_equal 0, marker.number_matches
    end

    def test_with_4_exact_matches
      marker = Marker.new "1234", "1234"

      assert_equal 0, marker.number_matches
    end
  end
end
