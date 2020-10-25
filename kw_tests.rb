# frozen_string_literal: true

require 'test/unit'
require './kw.rb' # nurodomas scriptas, kuris bus testuojamas
# testavimo klase
class KwTests < Test::Unit::TestCase
  # testo metodo pavadinimas, galima runinti po 1 testa nurodant metodo pavadinima
  def test_with_zero
    # lyginama ar 0 = Calculator.new(0).calculate_price
    assert_equal(0, Calculator.new(0).calculate_price)
    # jei lygu, testas sekmingas
  end

  def test_with_100
    assert_equal(62.5, Calculator.new(100).calculate_price)
  end

  def test_with_200
    assert_equal(160, Calculator.new(200).calculate_price)
  end

  def test_with_69420
    assert_equal(103_975, Calculator.new(69_420).calculate_price)
  end

  def test_with_a_letter
    assert_equal(0, Calculator.new('a').calculate_price)
  end
end
