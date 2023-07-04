#!/usr/bin/ruby

require_relative 'count_frequency'
require 'test/unit'

class TestCountFrequency < Test::Unit::TestCase
    def test_empty_list
        assert_equal({}, count_frequency([]))
    end
    def test_single_word
        assert_equal({"cat" => 1}, count_frequency(["cat"]))
    end
    def test_two_different_words
        assert_equal({"cat" => 1, "sat" => 1}, count_frequency(["cat", "sat"]))
    end
    