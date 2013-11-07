require 'spec_helper'
require 'atm'

describe ATM do
  let(:cards_with_pins) {
    {
      '09876543215' => '0987',
      '41234567890' => '1234'
    }
  }
  let(:card_numbers) {
    cards_with_pins.keys.sort
  }
  let(:cards_with_accounts) {
    {
      card_numbers.first => bank_account_user,
      card_numbers.last => nil
    }
  }
  let(:bank_account_user) {
    stub = stub("BankAccountUser")
    stub.stub(:balance).and_return(7000)
    stub.stub(:first_name).and_return("Ted")
    stub.stub(:account_number).and_return(card_numbers.first)
    stub
  }
  before(:each) do
    subject.stub(:cards_with_pins).and_return(cards_with_pins)
    subject.stub(:cards_with_accounts).and_return(cards_with_accounts)
  end
  describe "#authenticate(card_number, pin_number)" do
    context "with a valid card" do
      let(:card_number) { card_numbers.first }
      context "with a valid PIN number" do
        let(:pin_number) { cards_with_pins[card_number] }
        it "sets the current user" do
          subject.authenticate(card_number, pin_number)
          expect(subject.current_user).to eq(bank_account_user)
        end
        it "says Welcome back first_name" do
          subject.authenticate(card_number, pin_number)
          expect(subject.welcome).to eq("Welcome back Ted")
        end
      end

      context "with an invalid PIN number" do
        let(:pin_number) { 9999 }
        it "shows an error"
        context "on the third attempt" do
          before(:each) do
            pending
            subject.authenticate(card_number, pin_number)
            subject.authenticate(card_number, pin_number)
          end
          it "eats the card" do
            pending
            subject.authenticate(card_number, pin_number)
            subject.errors.should include("Have a nice day, yum")
          end
        end
      end
    end

    context "with an invalid card" do
      let(:card) { card_numbers.last }
      it "does things"
    end
  end

  context "for a user who has authenticated" do
    before(:each) do
      subject.stub(:current_user).and_return(bank_account_user)
    end

    describe "#balance_inquiry" do
      it "prints the account balance to the screen"
    end

    describe "#deposit(amount)" do
      context "for deposits <= $100" do
        it "increases the amount available by the amount"
        it "increases the balance by the amount deposited"
        it "prints a receipt with the current balance"
      end

      context "for deposits > $100" do
        it "increases the amount available by $100"
        it "increases the balance by the amount deposited"
        it "prints a receipt with the available and current balance"
      end
    end

    describe "#withdrawal(amount)" do
      context "when funds are available for withdrawal" do
        it "shows you the money"
      end

      context "when funds are not available" do
        it "does not allow the withdrawal"
      end
    end
  end
end
