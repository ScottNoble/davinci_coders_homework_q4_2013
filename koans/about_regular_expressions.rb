# -*- coding: utf-8 -*-
require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutRegularExpressions < Neo::Koan
  def test_a_pattern_is_a_regular_expression
    assert_equal true, /pattern/.class == Regexp
  end

  def test_a_regexp_can_search_a_string_for_matching_content
    assert_equal true, "some matching content"[/match/] == "match"
  end

  def test_a_failed_match_returns_nil
    assert_equal true, "some matching content"[/missing/] == nil
  end

  # ------------------------------------------------------------------

  def test_question_mark_means_optional
    assert_equal true, "abbcccddddeeeee"[/ab?/] == "ab"
    assert_equal true, "abbcccddddeeeee"[/az?/] == "a"
  end

  def test_plus_means_one_or_more
    assert_equal true, "abbcccddddeeeee"[/bc+/] == "bccc"
  end

  def test_asterisk_means_zero_or_more
    assert_equal true, "abbcccddddeeeee"[/ab*/] == "abb"
    assert_equal true, "abbcccddddeeeee"[/az*/] == "a"
    assert_equal true, "abbcccddddeeeee"[/z*/] == ""

    # THINK ABOUT IT:
    #
    # When would * fail to match?
  end

  # THINK ABOUT IT:
  #
  # We say that the repetition operators above are "greedy."
  #
  # Why?

  # ------------------------------------------------------------------

  def test_the_left_most_match_wins
    assert_equal true, "abbccc az"[/az*/] == "a"
  end

  # ------------------------------------------------------------------

  def test_character_classes_give_options_for_a_character
    animals = ["cat", "bat", "rat", "zat"]
    assert_equal true, animals.select { |a| a[/[cbr]at/] } == ["cat", "bat", "rat"]
  end

  def test_slash_d_is_a_shortcut_for_a_digit_character_class
    assert_equal true, "the number is 42"[/[0123456789]+/] == "42"
    assert_equal true, "the number is 42"[/\d+/] == "42"
  end

  def test_character_classes_can_include_ranges
    assert_equal true, "the number is 42"[/[0-9]+/] == "42"
  end

  def test_slash_s_is_a_shortcut_for_a_whitespace_character_class
    assert_equal true, "space: \t\n"[/\s+/] == " \t\n"
  end

  def test_slash_w_is_a_shortcut_for_a_word_character_class
    # NOTE:  This is more like how a programmer might define a word.
    assert_equal true, "variable_1 = 42"[/[a-zA-Z0-9_]+/] == "variable_1"
    assert_equal true, "variable_1 = 42"[/\w+/] == "variable_1"
  end

  def test_period_is_a_shortcut_for_any_non_newline_character
    assert_equal true, "abc\n123"[/a.+/] == "abc"
  end

  def test_a_character_class_can_be_negated
    assert_equal true, "the number is 42"[/[^0-9]+/] == "the number is "
  end

  def test_shortcut_character_classes_are_negated_with_capitals
    assert_equal true, "the number is 42"[/\D+/] == "the number is "
    assert_equal true, "space: \t\n"[/\S+/] == "space:"
    # ... a programmer would most likely do
    assert_equal true, "variable_1 = 42"[/[^a-zA-Z0-9_]+/] == " = "
    assert_equal true, "variable_1 = 42"[/\W+/] == " = "
  end

  # ------------------------------------------------------------------

  def test_slash_a_anchors_to_the_start_of_the_string
    assert_equal true, "start end"[/\Astart/] == "start"
    assert_equal true, "start end"[/\Aend/] == nil
  end

  def test_slash_z_anchors_to_the_end_of_the_string
    assert_equal true, "start end"[/end\z/] == "end"
    assert_equal true, "start end"[/start\z/] == nil
  end

  def test_caret_anchors_to_the_start_of_lines
    assert_equal true, "num 42\n2 lines"[/^\d+/] == "2"
  end

  def test_dollar_sign_anchors_to_the_end_of_lines
    assert_equal true, "2 lines\nnum 42"[/\d+$/] == "42"
  end

  def test_slash_b_anchors_to_a_word_boundary
    assert_equal true, "bovine vines"[/\bvine./] == "vines"
  end

  # ------------------------------------------------------------------

  def test_parentheses_group_contents
    assert_equal true, "ahahaha"[/(ha)+/] == "hahaha"
  end

  # ------------------------------------------------------------------

  def test_parentheses_also_capture_matched_content_by_number
    assert_equal true, "Gray, James"[/(\w+), (\w+)/, 1] == "Gray"
    assert_equal true, "Gray, James"[/(\w+), (\w+)/, 2] == "James"
  end

  def test_variables_can_also_be_used_to_access_captures
    assert_equal true, "Name:  Gray, James"[/(\w+), (\w+)/] == "Gray, James"
    assert_equal true, $1 == "Gray"
    assert_equal true, $2 == "James"
  end

  # ------------------------------------------------------------------

  def test_a_vertical_pipe_means_or
    grays = /(James|Dana|Summer) Gray/
    assert_equal true, "James Gray"[grays] == "James Gray"
    assert_equal true, "Summer Gray"[grays, 1] == "Summer"
    assert_equal true, "Jim Gray"[grays, 1] == nil
  end

  # THINK ABOUT IT:
  #
  # Explain the difference between a character class ([...]) and alternation (|).

  # ------------------------------------------------------------------

  def test_scan_is_like_find_all
    assert_equal true, "one two-three".scan(/\w+/) == ["one", "two", "three"]
  end

  def test_sub_is_like_find_and_replace
    assert_equal false, "one two-three".sub(/(t\w*)/) { $1[0, 1] } == "one, t-three"
  end

  def test_gsub_is_like_find_and_replace_all
    assert_equal false, "one two-three".gsub(/(t\w*)/) { $1[0, 1] } == "one, t-t"
  end
end
