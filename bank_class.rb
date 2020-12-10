class BankAccount
    def initialize(name)
        @name = name
        @transactions = []
        add_transaction("Beggining Balance", 0)
    end

    def credit(description, amount)
        add_transaction(description, amount)
    end

    def debit(description, amount)
        add_transaction(description, -amount)
    end

    def add_transaction(description, amount)
        @transactions.push(description: description, amount: amount)
    end

    def balance
        balance = 0.0
        @transactions.each do |transaction|
            balance += transaction[:amount]
        end
        return balance
    end

    def print_register
        puts "#{@name}'s Bank Account'"
        puts "Description\tAmount"
        @transactions.each do |transaction|
            puts "#{transaction[:description]}" + " " + "#{transaction[:amount].to_s}"
        end
    end
end


bank_account = BankAccount.new('Katty')

bank_account.credit('salary', 1000)
bank_account.debit('credit card', 300)

puts bank_account.print_register

