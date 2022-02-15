require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

#続きを書いていきましょう！！(ifで条件分岐)

if memo_type == 1
  puts "拡張子を除いたファイルを入力してください"
  file_title = gets.chomp
  p "メモしたい内容を入力してください"
  p "完了したらCtrl + Dを押します"
  memo_contents = gets.chomp
  CSV.open("#{file_title}.csv",'w') do |memo|
    memo << ["memo"]
    memo << [memo_contents]
end
elsif memo_type == 2
  puts "編集したいファイル名を入力してください"
  file_title = gets.chomp
  p "編集内容を入力してください"
  p "完了したらCtrl + Dを押します"
  memo_contents = gets.chomp
  CSV.open("#{file_title}.csv",'a') do |memo|
    memo << [memo_contents]
end
else
  puts "エラー"
end