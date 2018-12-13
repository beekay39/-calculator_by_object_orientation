class Wallet
    attr_reader :balance

    # 初期化
    # balance: 残高
    def initialize(balance)
        @balance = balance
    end

    # 財布からチャージする
    # charge_amout: チャージ金額
    def charge(charge_amount)
        @balance = @balance + charge_amount
    end

    # 財布から消費する
    # spend: 消費
    # spend_amount: 消費金額
    def spend(spend_amount)
        @balance = @balance - spend_amount
    end
end