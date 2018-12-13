require "./Wallet.rb"

# 財布クラスのインスタンスを作成
wallet = Wallet.new(1000)

puts "終了する時はWindowsの場合Ctrl+C、Macの場合Command+Cを押してください"

loop do
    print "チャージする場合は1、消費する場合は2を入力し、Enterキーを押して下さい："
    command = gets.to_i

    if command == 1
        print "チャージ金額を入力して下さい："
        amout = gets.to_i
        wallet.charge(amout)
        puts "チャージが完了しました。(チャージ後残高：#{wallet.balance})"
    elsif command == 2
        print "消費金額を入力して下さい："
        amout = gets.to_i
        wallet.spend(amout)
        puts "消費が完了しました。(消費後残高：#{wallet.balance})"
    else
        puts "入力が正しくありません。"
    end
end