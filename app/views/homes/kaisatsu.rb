def kaisatsu(tikket, check)
  jusou = 150
  mikuni = 190
  # 切符の確認と金額への変換
  if tikket == 'jusou'
    tikket = 150
  elsif tikket == 'mikuni'
    tikket = 190
  else
    puts 'こわれちゃう～'
  end
  # 降り口と切符の金額を比較する条件分岐
  if tikket == jusou && check == 'jusou'
    puts 'ご利用ありがとうございました'
  elsif tikket == mikuni && check == 'mikuni'
    puts 'ご利用ありがとうございました'
  elsif tikket == mikuni && check == 'jusou'
    puts 'ご利用ありがとうございました'
  else
    puts 'ご精算が必要です'
  end
end

# 改行が含まれてしまうためメソッド内で別物として扱われる！これを防ぐ方法として(.chomp)メソッドで変数に改行を含めず格納できる！
puts 'jusou(150), mikuni(190)から切符を購入してください'
tikket = gets.chomp

puts '降り口はどちらでしょうか？ jusouまたはmikuni'
check = gets.chomp
puts kaisatsu(tikket, check)