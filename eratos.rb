# コマンドライン引数

x = ARGV[0].to_i

class Eratos

  def self.eratos(x)
    # 素数リスト
    prime_number_array = []
    # 探索リストに２からxまでの整数を昇順でいれる
    search_array = (2..x).to_a
    # 探索リストの先頭値
    search_top = search_array[0].to_i

    # 探索リストの先頭値がxの平方根に達するまで繰り返す
    while search_top < Math.sqrt(x)
      # 探索リストの先頭の数を素数リストに移動しその倍数を探索リストから古い落とす
      prime_number = search_array[0].to_i
      prime_number_array.push(prime_number)
      # 探索リストから素数の倍数を削除
      search_array.reject!{ |e| e % prime_number == 0}
      # 探索の先頭値を更新
      search_top = search_array[0].to_i
    end
    # 残った探索リストを素数リストへ追加
    prime_number_array.concat(search_array)
  end
end

puts "#{Eratos.eratos(x)}"