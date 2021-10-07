numbers = [1,2,3,4,5,6]
words = ['おむすび','おにぎり','お米','お米食べろ！','ピザ']

# selectは配列内の要素一つひとつを評価し、trueならそれらを新しく配列に加えてくれる。
new_numbers = numbers.select{|n| n.even?}
puts new_numbers

new_words = words.select do |n|
  n.length == 2
end
puts new_words

# selectで抜き出す要素としてscanメソッドを使用、正規表現の意図は「'お'を含む1文字以上」
new_words = words.select{|n| n.scan(/お.+/)}
puts new_words

new_words = words.select { |n| n == 'お米食べろ！'}
puts new_words