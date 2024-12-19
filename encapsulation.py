class BankAccount:
    def __init__(self, account_holder, initial_balance):
        self.__account_holder = account_holder  # Private 
        self.__balance = initial_balance        # Private 

    # Get account holder
    def get_account_holder(self):
        return self.__account_holder

    # Get balance
    def get_balance(self):
        return self.__balance

    # deposit money
    def deposit(self, amount):
        if amount > 0:
            self.__balance += amount
            print(f"Deposited {amount}. New balance: {self.__balance}")
        else:
            print("Deposit amount must be positive.")

    # withdraw money
    def withdraw(self, amount):
        if 0 < amount <= self.__balance:
            self.__balance -= amount
            print(f"Withdrawn {amount}. New balance: {self.__balance}")
        else:
            print("Insufficient balance or invalid amount.")

# object
account = BankAccount("Gurshaan", 1000)

print(f"Account Holder: {account.get_account_holder()}")
print(f"Initial Balance: {account.get_balance()}")

# transactions
account.deposit(500)
account.withdraw(300)
account.withdraw(1500)  # Attempting to withdraw more than the balance
