class Wallet
    attr_reader :balance, :point

    # 初期化
    # balance: 残高
    def initialize(balance)
        @balance = balance
        @point = 0
        @log_array = []
    end

    # 財布からチャージする
    # charge_amout: チャージ金額
    def charge(charge_amount)
        @balance = @balance + charge_amount
        @point = @point + (charge_amount * 0.2).ceil
        
        # 履歴追加
        @log_array.push("#{charge_amount}円チャージ。(チャージ後残高：#{@balance}、チャージ後ポイント：#{@point})")
        
    end

    # 財布から消費する
    # spend: 消費
    # spend_amount: 消費金額
    def spend(spend_amount)
        ## 消費額よりポイントが大きい場合の計算
        if spend_amount <= @point
            
            ### 残ポイント計算
            @point = @point - spend_amount
            
            # 履歴追加
            @log_array.push("#{spend_amount}円支払い。(支払い後残高：#{@balance}、支払い後ポイント：#{@point})")
            
        ## ポイントより消費額が大きい場合の計算
        elsif spend_amount > @point
            
            ### ポイント消費後の金額計算
            spend_amount = spend_amount - @point
            
            ### ポイントを初期化
            @point = 0
            
            ### 残高計算
            @balance = @balance - spend_amount
            
            # 履歴追加
            @log_array.push("#{spend_amount}円支払い。(支払い後残高：#{@balance}、支払い後ポイント：#{@point})")
        
        end
    end
    
    # 利用履歴を出力する
    # 標準出力の箇所はmain.rb内で請け負う方が良さそうだが、可読性の説明の為一旦Walletクラスに実装
    def output_log
        log_array_copy = @log_array.dup
        
        if log_array_copy.empty?
            puts "履歴は存在しません"
        else
            while log_array_copy != [] do
                puts log_array_copy.shift
            end
        end
        
    end
end