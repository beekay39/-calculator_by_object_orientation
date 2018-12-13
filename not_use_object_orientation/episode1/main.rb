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
        
        # 今回追加されるポイント計算
        add_point = balance * 0.2

        # ポイント追加
        point = point + add_point
        
        puts "チャージが完了しました。(チャージ後残高：#{balance}、チャージ後ポイント：{point})"
    elsif command == 2
        print "消費金額を入力して下さい："
        amount = gets.to_i
        
        # 利用するポイントを保存
        used_point = point
        
        # 残高をポイント分消費金額を割引して計算
        balance = balance + ( amount - point )
        
        puts "消費が完了しました。(消費後残高：#{balance}、利用後ポイント：#{used_point})"
    else
        puts "入力が正しくありません。"
    end
end