class Wallet
    attr_reader :balance, :point

    # 初期化
    # balance: 残高
    def initialize(balance)
        @balance = balance
        @point = 0
    end

    # 財布からチャージする
    # charge_amout: チャージ金額
    def charge(charge_amount)
        @balance = @balance + charge_amount
        @point = @point + (charge_amount * 0.2).ceil
    end

    # 財布から消費する
    # spend: 消費
    # spend_amount: 消費金額
    def spend(spend_amount)
        ## 消費額よりポイントが大きい場合の計算
        if spend_amount <= @point
            
            ### 残ポイント計算
            @point = @point - spend_amount
            
        ## ポイントより消費額が大きい場合の計算
        elsif spend_amount > @point
            
            ### ポイント消費後の金額計算
            spend_amount = spend_amount - @point
            
            ### ポイントを初期化
            @point = 0
            
            ### 残高計算
            @balance = @balance - spend_amount
        
        end
    end
end