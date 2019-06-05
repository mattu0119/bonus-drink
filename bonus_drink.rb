class BonusDrink
  def self.total_count_for(amount)

    # total: 飲んだ総数
    # empty: 手持ちの空き缶の数
    # まずもらった缶をすべて飲む
    total = amount
    empty = amount

    # 空き缶をすべて交換する　交換した缶をすべて飲むを交換できなくなるまで繰り返す
    while empty > 2
      # 手持ちの空き缶3つで新たに交換した本数
      new_drink = (empty / 3)
      # 飲んだ総数は今まで飲んだ数に新たに交換した数
      total = total + new_drink
      # 手持ちの空き缶は新たに交換した缶の数＋交換できなかった缶の数
      empty = new_drink + (empty % 3)
    end

    # 今まで飲んだ総数を返す
    total

  end
end