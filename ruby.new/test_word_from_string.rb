# frozen_string_literal: true

require_relative 'words_freq'
require 'minitest/autorun'

# TestWordsFromString
class TestWordsFromString < Minitest::Test
  def test_empty_string
    assert_equal([], words_from_string(''))
    assert_equal([], words_from_string(' '))
  end

  def test_single_word
    assert_equal(['lorem'], words_from_string('lorem'))
    assert_equal(['lorem'], words_from_string(' lorem'))
  end

  def test_many_words
    assert_equal(
      %w[lorem ipsum dolor sit amet],
      words_from_string('lorem ipsum dolor sit amet')
    )
  end

  def test_ignores_punctuation
    assert_equal(
      ['lorem', "dolor's", 'amet'],
      words_from_string("<lorem!> dolor's, -amet-")
    )
  end
end
