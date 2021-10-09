require 'minitest/autorun'
require './lib/team'
require './lib/bank'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_to_array
    # 配列の値は正しいか？
    assert_equal(['Japan', 'US', 'India'], Team::CURRENCIES)
    # 配列自身がfreezeされているか？
    assert Team::CURRENCIES.frozen?
    # 配列の要素がすべてfreezeされているか？
    assert Team::CURRENCIES.all? { |country| country.frozen? }
  end
 
 def test_deep_freezable_to_hash
   assert_equal(
     { 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' },
     Bank::CURRENCIES
   )
# ハッシュ自身がfreezeされているか？
    assert Bank::CURRENCIES.frozen?
    # ハッシュの要素（キーと値）がすべてfreezeされているか？
    assert Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }
  end
end