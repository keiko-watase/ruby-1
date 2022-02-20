def rock_paper_scissors
  puts "じゃんけん..."
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  
  me = gets.to_i

  if me == 0
    my_type = "グー"
  elsif me == 1
    my_type = "チョキ"
  elsif me == 2
    my_type = "パー"
  elsif me == 3
    puts "--------------"
    puts "あなた:戦いません"
    puts "相手:また戦いましょう"
    puts "--------------"
    exit
  else
    until me == 0 || me == 1 || me == 2 || me == 3 do
        puts "0~3を入力してください"
        me = gets.to_i
    end
    if me == 0
      my_type = "グー"
    elsif me == 1
      my_type = "チョキ"
    elsif me == 2
      my_type = "パー"
    elsif me == 3
      puts "--------------"
      puts "あなた:戦いません"
      puts "相手:また戦いましょう"
      puts "--------------"
      exit
    end
  end

  you = ["グー","チョキ","パー"]
  your_type = you.sample

  puts "ホイ!"
  puts "--------------"
  puts "あなた:#{my_type}を出しました"
  puts "相手:#{your_type}を出しました"
  puts "--------------"

  while my_type == your_type do
    puts "あいこで..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"

    me = gets.to_i
    
    if me == 0
      my_type = "グー"
    elsif me == 1
      my_type = "チョキ"
    elsif me == 2
      my_type = "パー"
    elsif me == 3
      puts "--------------"
      puts "あなた:戦いません"
      puts "相手:また戦いましょう"
      puts "--------------"
      exit
    else
      until me == 0 || me == 1 || me == 2 || me == 3 do
        puts "0~3を入力してください"
        me = gets.to_i
      end
      if me == 0
         my_type = "グー"
      elsif me == 1
        my_type = "チョキ"
      elsif me == 2
        my_type = "パー"
      elsif me == 3
        puts "--------------"
        puts "あなた:戦いません"
        puts "相手:また戦いましょう"
        puts "--------------"
      end
    end

    you = ["グー","チョキ","パー"]
    your_type = you.sample

    puts "ショ!"
    puts "--------------"
    puts "あなた:#{my_type}を出しました"
    puts "相手:#{your_type}を出しました"
    puts "--------------"

  end
  

  if (my_type == "グー" && your_type == "チョキ") || (my_type == "チョキ" && your_type == "パー") || (my_type == "パー" && your_type == "グー")
    $game_result1 = 1
  else
    $game_result1 = 2
  end

end

def facing_overthere
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"

  me = gets.to_i

  if me == 0
    my_direction = "上"
  elsif me == 1
    my_direction = "下"
  elsif me == 2
    my_direction = "左"
  elsif me == 3
    my_direction = "右"
  else
    until me == 0 || me == 1 || me == 2 || me == 3 do
        puts "0~3を入力してください"
        me = gets.to_i
    end
    if me == 0
      my_direction = "上"
    elsif me == 1
      my_direction = "下"
    elsif me == 2
      my_direction = "左"
    elsif me == 3
      my_direction = "右"
    end
  end

  you = ["上","下","左","右"]
  your_direction = you.sample

  puts "ホイ!"
  puts "--------------"
  puts "あなた:#{my_direction}"
  puts "相手:#{your_direction}"
  puts "--------------"

  if my_direction == your_direction
    $game_result2 = 1
  else
    $game_result2 = 2
  end

end

rock_paper_scissors
facing_overthere

if $game_result2 == 1
  if $game_result1 == 1
    puts "あなたの勝ち"
  else
    puts "相手の勝ち"
  end
else
  while $game_result2 == 2 do
    rock_paper_scissors
    facing_overthere
  end
    if $game_result1 == 1
      puts "あなたの勝ち"
    else
      puts "相手の勝ち"
    end
end

  
