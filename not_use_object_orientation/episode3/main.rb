# 残高初期化
# balance: 残高
balance = 1000
point = 0

# 履歴追加
log_array = []

puts "終了する時はWindowsの場合Ctrl+C、Macの場合Command+Cを押してください"

loop do
    print "チャージする場合は1、消費する場合は2を入力、利用履歴を表示する場合は3を入力し、Enterキーを押して下さい："
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
        
        # 履歴追加
        log_array.push("#{amount}円チャージ。(チャージ後残高：#{balance}、チャージ後ポイント：#{point})")
        
        puts "チャージが完了しました。(チャージ後残高：#{balance}、チャージ後ポイント：#{point})"
        
    elsif command == 2
        print "消費金額を入力して下さい："
        amount = gets.to_i
        
        # ポイント計算
        
        ## 消費額よりポイントが大きい場合の計算
        if amount <= point
            
            ### 残ポイント計算
            point = point - amount
            
            # 履歴追加
            log_array.push("#{amount}円支払い。(支払い後残高：#{balance}、支払い後ポイント：#{point})")
            
        ## ポイントより消費額が大きい場合の計算
        elsif amount > point
            
            ### ポイント消費後の金額計算
            amount = amount - point
            
            ### ポイントを初期化
            point = 0
            
            ### 残高計算
            balance = balance - amount
            
            # 履歴追加
            log_array.push("#{amount}円支払い。(支払い後残高：#{balance}、支払い後ポイント：#{point})")
            
        end
        
        puts "消費が完了しました。(消費後残高：#{balance}、利用後ポイント：#{point})"
    
    elsif command == 3
        
        log_array_copy = log_array.dup
        
        if log_array_copy.empty?
            puts "履歴は存在しません"
        else
            while log_array_copy != [] do
                puts log_array_copy.shift
            end
        end
        
    else
        puts "入力が正しくありません。"
    end
end