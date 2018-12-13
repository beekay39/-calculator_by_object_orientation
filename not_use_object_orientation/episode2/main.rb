# 残高初期化
# balance: 残高
balance = 1000
point = 0

puts "終了する時はWindowsの場合Ctrl+C、Macの場合Command+Cを押してください"

loop do
    print "チャージする場合は1、消費する場合は2を入力し、Enterキーを押して下さい："
    command = gets.to_i

    if command == 1
        print "チャージ金額を入力して下さい："
        amount = gets.to_i
        balance = balance + amount
        
        # ポイント計算
        ## 今回追加されるポイント計算
        add_point = (amount * 0.2).ceil

        ## ポイント追加
        point = point + add_point
        
        puts "チャージが完了しました。(チャージ後残高：#{balance}、チャージ後ポイント：#{point})"
        
    elsif command == 2
        print "消費金額を入力して下さい："
        amount = gets.to_i
        
        # ポイント計算
        
        ## 消費額よりポイントが大きい場合の計算
        if amount <= point
            
            ### 残ポイント計算
            point = point - amount
            
        ## ポイントより消費額が大きい場合の計算
        elsif amount > point
            
            ### ポイント消費後の金額計算
            amount = amount - point
            
            ### ポイントを初期化
            point = 0
            
            ### 残高計算
            balance = balance - amount
        end
        
        puts "消費が完了しました。(消費後残高：#{balance}、利用後ポイント：#{point})"
    else
        puts "入力が正しくありません。"
    end
end