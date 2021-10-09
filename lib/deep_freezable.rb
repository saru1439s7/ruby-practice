module DeepFreezable
  def deep_freeze(array_or_hash)
    # 配列の各要素をfreeze
    case array_or_hash
    when Array
      array_or_hash.each do |element|
        element.freeze
      end
    # 配列自身をfreeze（かつ、これがメソッドの戻り値となる）
    when Hash
      array_or_hash.each do |key, value|
        key.freeze
        value.freeze
      end
    end
    array_or_hash.freeze
  end
end