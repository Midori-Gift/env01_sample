require 'minitest/autorun'
require './app/views/homes/kaisatsu'

class KaisatsuTest < Minitest::Test
  def test_kaisatsu
    assert_equal 150, tikket('jusou')
    assert_equal 190, tikket('mikuni')
  end
end