wallet = 300
puts "10万コインを目指そう"
puts "所持コイン:300コイン"
puts "-----数字入力+enterでコイン投入------"
puts "-----enterを３回押して止めてね-------"

loop do
    puts "[0]10コイン\n[1]50コイン\n[2]100コイン\n[3]やめる"

      
    coins = [10,50,100]
    player_coin = gets.chomp.to_i
    if wallet == 100000
        puts "おめでとう！１０万長者です！"
        puts "-----------クリア------------"
        break
    end
    if player_coin == 1#49コイン以下の場合１は押せない
        if wallet <= 49
        puts "所持金が足りません！所持金:#{wallet}コイン"
    next
        end
    end
    if player_coin == 2#99コイン以下の場合2は押せない
        if wallet <= 99
        puts "所持金が足りません!#{wallet}コイン"
    next
        end
    end
    
    
      if player_coin == 3
         puts "あなたの所持金は#{wallet}コインでおわった！"
         break
      end
      if wallet <= 9
          puts "もう所持金が#{wallet}です・・・"
          puts "------gameover-------"
          break
      end
 
      #100000コイン以上の時ゲームが終わる

    puts "---------------------------------"
    puts "#{coins[player_coin]}コインを入れました"

    num1=rand(9)
    num2=rand(9)
    num3=rand(9)
    num4=rand(9)
    num5=rand(9)
    num6=rand(9)
    num7=rand(9)
    num8=rand(9)
    num9=rand(9)
    
    one_fit =  (num1 == num4 && num4 == num7 && num1 == num7)||(num2 == num5 && num5 == num8 && num2 == num8)||(num3 == num6 && num6 == num9 && num3 == num9)||(num1 == num5 && num5 == num9 && num1 == num9)||(num3 == num5 && num5 == num7 && num3 == num7)||(num1 == num2 && num2 == num3 && num1 == num3)||(num4 == num5 && num5 == num6 && num4 == num5)||(num7 == num8 && num8 == num9 && num7 == num9)#縦３　これを上があったときにTRUEを返してループさせるfalseの時に終わらせる

    puts "ENTERでSTOP！" 
    puts = gets
    puts "-------------"
    puts "|#{num1}| | |"
    puts "|#{num2}| | |"
    puts "|#{num3}| | |"
    puts = gets
    puts "-------------"
    puts "|#{num1}|#{num4}| |"
    puts "|#{num2}|#{num5}| |"
    puts "|#{num3}|#{num6}| |"
    puts = gets
    puts "-------------"
    puts "|#{num1}|#{num4}|#{num7}|"
    puts "|#{num2}|#{num5}|#{num8}|"
    puts "|#{num3}|#{num6}|#{num9}|"
    
    seven_slot = (num1 == 7 && num4 == 7 && num7 == 7)||(num2 == 7 && num5 == 7 && num8 == 7)||(num3 == 7 && num6 == 7 && num9 ==7)||#横
                (num1 == 7 && num2 == 7 && num3 == 7)||(num4 == 7 && num5 == 7 && num6 ==7)||(num7 == 7 && num8 == 7 && num9 ==7)||#縦
                (num1 == 7 && num5 == 7 && num9 == 7)||(num3 == 7 && num5 == 7 && num7 == 7)
   if seven_slot
       wallet = wallet + 777777
       puts "7 7 7"
       puts "揃った！"
       puts "所持:#{wallet}コイン"
       puts "-------クリア-----------"
       
       break
    end
    
    
    if player_coin == 0
        
       if one_fit
        puts "パパーン!"
        wallet = wallet - coins[player_coin] + 21 * coins[player_coin]
        puts "#{wallet}獲得!"
        
        #ここでいくら当たったか、持ち金に＋して表示

        
       else
        puts "ハズレ"
        #ここで外れたので使ったコインを弾いて表示
        #上段、中段、下段、斜めが同じ数字だった場合
        wallet = wallet - coins[player_coin]
        puts "所持コイン：#{wallet}"
       end
    elsif player_coin == 1
       if one_fit
        puts "パパーパパパパン!"
        wallet = wallet - coins[player_coin] + 150 * coins[player_coin]
        puts "#{wallet}獲得"
       else
        puts "ハズレ"
        #ここで外れたので使ったコインを弾いて表示
        #上段、中段、下段、斜めが同じ数字だった場合
        wallet = wallet - coins[player_coin]
        puts "所持コイン：#{wallet}"
       end
    else player_coin == 2
        
       if one_fit
        puts "どどーーん"
        wallet = wallet - coins[player_coin] + 900 * coins[player_coin]
        puts "#{wallet}獲得!!"
       else
        puts "ハズレ"
        #ここで外れたので使ったコインを弾いて表示
        #上段、中段、下段、斜めが同じ数字だった場合
        wallet = wallet - coins[player_coin]
        puts "所持コイン：#{wallet}"
       end
    end
end