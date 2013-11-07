class ATM
  attr_accessor :first_name, :account_number, :account_balance
  attr_reader :cards_with_pins, :cards_with_accounts, :current_user
  #def initialize(first_name, account_number, account_balance)
  #  @first_name = first_name
  #  @account_number = account_number
  #  @account_balance = account_balance
  #end


  def authenticate(card_number, pin_number)
    if (cards_with_pins[card_number] == pin_number)
      @current_user = cards_with_accounts[card_number]
      welcome
    else
      # BAD PIN
    end
  end

  def welcome
    "Welcome back #{@current_user.first_name}"
  end
end
