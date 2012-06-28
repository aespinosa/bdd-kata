require 'test_helper'

module  MarkerTest
  class ExactMatchesContext < Test::Unit::TestCase
    def test_with_no_matches
      marker = Marker.new "1234", "5555"

      assert_equal 0, marker.exact_matches
    end

    def test_with_1_exact_match
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

  class NumberMatchesContext < Test::Unit::TestCase
    def test_with_no_matches
      marker = Marker.new "1234", "5555"

      assert_equal 0, marker.number_matches
    end

    def test_with_1_match
      marker = Marker.new "1234", "2555"

      assert_equal 1, marker.number_matches
    end

    def test_with_1_exact_match
      marker = Marker.new "1234", "1555"

      assert_equal 0, marker.number_matches
    end

    def test_with_2_number_matches
      marker = Marker.new "1234", "2355"

      assert_equal 2, marker.number_matches
    end

    def test_with_1_number_and_1_exact_match
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
