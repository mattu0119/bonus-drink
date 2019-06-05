# コマンドライン引数

x = ARGV[0].to_i
y = ARGV[1].to_i
z = ARGV[2].to_i

class Triangle

  # 三角形である |x - y| < z && z < x + y
  # 正三角形判定 x == y && y == z (三辺が同じ値である)
  # 二頭編三角形判定 x == y || y == z || z == y (二辺が同じ値である、三辺が同じ値である場合は正三角形であるが先に正三角形の判定をすることで条件からはずす)
  # 不等辺三角形 x !=y && y != z && z != x (三辺が同じ値ではない)

  # 三角形の判定をまずする falseならば　=> 三角形ではないです！
  # 三角形ならば各種の判定をする

  def self.triangle(x, y, z)
    if ((x - y).abs < z) && (z < (x + y))
      if (x == y) && (y == z)
        "正三角形ですね！"
      elsif (x == y) || (y == z) || (z == x)
        "二等辺三角形ですね！"
      elsif (x != y) && (y != z) && (z != x)
        "不等辺三角形ですね！"
      end
    else
      "三角形じゃないです＞＜"
    end

  end
end

puts Triangle.triangle(x,y,z)
