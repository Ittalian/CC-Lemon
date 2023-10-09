line = '----------------'
line2 = '-------------------'
semiLongLine = '-------------------------'
longLine = '---------------------------'
longLine2 = '------------------------------'
lemon = "レモン"
barrier = "バリア"
beam = "ビーム"
match = 0
yourCharge = 0
comCharge = 0

puts 'Game start!'

while match == 0 do
  puts " "
  puts "CC..."
  puts "レモン[0] バリア[1]"

  yourSelect = gets.to_i

  if yourSelect < 0 || yourSelect > 1
    puts "無効な数字です"
    redo
  end

  if comCharge == 1
    comSelect = rand(3)
  elsif comCharge == 0
    comSelect = 0
  else
    comSelect = rand(1..2)
  end

  if yourCharge == 0
      random = rand(2)
      if random == 0
        comSelect = 0
      else
        comSelect = 2
      end
  end
  
    if yourSelect == 0 #レモンを選んだ時
        yourCharge += 1
        puts "あなたは#{lemon}を選択しました(push Enter)"
        puts " "
        enterPush = gets
      if comSelect == 2
        puts "COMは#{beam}を選択しました"
        puts line
        puts "あなたの負けです"
        puts line
        break
      elsif comSelect == 0
        puts "COMは#{lemon}を選択しました"
        comCharge += 1
      else
        puts "COMは#{barrier}を選択しました"
      end
        puts longLine2
        puts "ビームが使えるようになりました"
        puts longLine2
        match += 1
    else #バリアを選んだとき
        puts "あなたは#{barrier}を選択しました(push Enter)"
        enterPush = gets
      if comSelect == 2 #COMがビームを選んだ時
        puts "COMは#{beam}を選択しました"
        puts semiLongLine
        puts "COMの攻撃をガードしました"
        puts semiLongLine
      elsif comSelect == 0 #COMがレモンを選んだ時
        puts "COMは#{lemon}を選択しました"
        comCharge += 1
      else #COMがバリアを選んだ時
        puts "COMは#{barrier}を選択しました"
      end
      puts " "
      puts "warn:ビームを使用するために、レモンを選択してください"
      puts " "
      puts "あなたのレモン:#{yourCharge}個 COMのレモン:#{comCharge}個"
    end
end
  
while match % 2 == 1 do
  puts "あなたのレモン:#{yourCharge}個 COMのレモン:#{comCharge}個"
  puts " "
  puts "CC..."
  puts "レモン[0] バリア[1] ビーム[2]"

  yourSelect = gets.to_i

  if yourSelect < 0 || yourSelect > 2
    puts "無効な数字です"
    redo
  end

  if comCharge == 2
    comSelect = rand(1..2)
  elsif comCharge == 0
    comSelect = rand(2)
  else
    comSelect = rand(3)
  end

  if yourSelect == 0 #レモンを選んだ時
    puts "あなたは#{lemon}を選択しました(push Enter)"
    puts ""
    yourCharge += 1
    enterPush = gets
    if comSelect == 2
      puts "COMは#{beam}を選択しました"
      puts line
      puts "あなたの負けです"
      puts line
      break
    elsif comSelect == 0
      puts "COMは#{lemon}を選択しました"
      comCharge += 1
    else
      puts "COMは#{barrier}を選択しました"
    end
  elsif yourSelect == 1 #バリアを選んだ時
    puts "あなたは#{barrier}を選択しました(push Enter)"
    puts ""
  　enterPush = gets
    if comSelect == 2 #COMがビームを選んだ時
      puts "COMは#{beam}を選択しました"
      puts semiLongLine
      puts "COMの攻撃をガードしました"
      puts semiLongLine
      comCharge -= 1
    elsif comSelect == 0 #COMがレモンを選んだ時
      puts "COMは#{lemon}を選択しました"
      comCharge += 1
    else #COMがバリアを選んだ時
      puts "COMは#{barrier}を選択しました"
    end
  else #ビームを選んだ時
    puts "あなたは#{beam}を選択しました(push Enter)"
    puts ""
    enterPush = gets
    yourCharge -= 1
    if comSelect == 2 #COMがビームを選んだ時
      puts "COMは#{beam}を選択しました"
      puts line2
      puts "攻撃が相殺されました"
      puts line2
      comCharge -= 1
    elsif comSelect == 0 #COMがレモンを選んだ時
      puts "COMは#{lemon}を選択しました"
      comCharge += 1
      puts line
      puts "あなたの勝ちです"
      puts line
      break
    else #COMがバリアを選んだ時
      puts "COMは#{barrier}を選択しました"
      puts longLine
      puts "COMに攻撃をガードされました"
      puts longLine
    end

    if yourCharge == 0
       puts " "
       puts "レモンがなくなったので、ビームが使えなくなりました"
       match += 1
    end
  end

while match % 2 == 0 do
  puts " "
  puts "あなたのレモン: 残り#{yourCharge}個 COMのレモン: 残り#{comCharge}個"
  puts " "
  puts "CC..."
  puts "レモン[0] バリア[1]"

  yourSelect = gets.to_i

  if yourSelect < 0 || yourSelect > 1
    puts "無効な数字です"
    redo
  end

    if comCharge == 2
      comSelect = rand(1..2)
    elsif comCharge == 0
      comSelect = rand(2)
    else
      comSelect = rand(3)
    end

    if yourCharge == 0
      random = rand(2)
      if random == 0
        comSelect = 0
      else
        comSelect = 2
      end
    end
  
  if yourSelect == 0 #レモンを選んだ時
       puts "あなたは#{lemon}を選択しました(push Enter)"
       puts ""
       yourCharge += 1
       enterPush = gets
      if comSelect == 2
        puts "COMは#{beam}を選択しました"
        puts line
        puts "あなたの負けです"
        puts line
        break
      elsif comSelect == 0
        puts "COMは#{lemon}を選択しました"
        comCharge += 1
      else
        puts "COMは#{barrier}を選択しました"
      end
        puts longLine2
        puts "ビームが使えるようになりました"
        puts longLine2
        match += 1
  else #バリアを選んだ時
       puts "あなたは#{barrier}を選択しました(push Enter)"
       puts ""
       enterPush = gets
      if comSelect == 2 #COMがビームを選んだ時
        puts "COMは#{beam}を選択しました"
        puts semiLongLine
        puts "COMの攻撃をガードしました"
        puts semiLongLine
        comCharge -= 1
      elsif comSelect == 0 #COMがレモンを選んだ時
        puts "COMは#{lemon}を選択しました"
        comCharge += 1
      else #COMがバリアを選んだ時
        puts "COMは#{barrier}を選択しました"
      end
  end
 end
end