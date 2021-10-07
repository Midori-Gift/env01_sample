numbers = [1,2,3,4,5,6]
words = ['おむすび','おにぎり','お米','お米食べろ！','ピザ']

# selectは配列内の要素一つひとつを評価し、trueならそれらを新しく配列に加えてくれる。
new_numbers = numbers.select{|n| n.even?}
puts new_numbers

new_words = words.select do |n|
  n.length == 2
end
puts new_words

new_words = words.select { |n| n == 'お米食べろ！'}
puts new_words