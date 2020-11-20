class VendingMachine:
    """A vending machine that vends some product for some price.

    >>> v = VendingMachine('candy', 10)
    >>> v.vend()
    'Inventory empty. Restocking required.'
    >>> v.add_funds(15)
    'Inventory empty. Restocking required. Here is your $15.'
    >>> v.restock(2)
    'Current candy stock: 2'
    >>> v.vend()
    'You must add $10 more funds.'
    >>> v.add_funds(7)
    'Current balance: $7'
    >>> v.vend()
    'You must add $3 more funds.'
    >>> v.add_funds(5)
    'Current balance: $12'
    >>> v.vend()
    'Here is your candy and $2 change.'
    >>> v.add_funds(10)
    'Current balance: $10'
    >>> v.vend()
    'Here is your candy.'
    >>> v.add_funds(15)
    'Inventory empty. Restocking required. Here is your $15.'

    >>> w = VendingMachine('soda', 2)
    >>> w.restock(3)
    'Current soda stock: 3'
    >>> w.restock(3)
    'Current soda stock: 6'
    >>> w.add_funds(2)
    'Current balance: $2'
    >>> w.vend()
    'Here is your soda.'
    """
def __init__(self, product, price):
    self.product = product
self.price = price
self.stock = 0
self.balance = 0

def restock(self, n):
    self.stock += n
return 'Current {0} stock: {1}'.format(self.product, self.stock)

def add_funds(self, n):
    if self.stock == 0:
        return 'Inventory empty. Restocking required. Here is your ${0}.'.format(n)
    self.balance += n
    return 'Current balance: ${0}'.format(self.balance)

    def vend(self):
        if self.stock == 0:
            return 'Inventory empty. Restocking required.'
        difference = self.price - self.balance
        if difference > 0:
            return 'You must add ${0} more funds.'.format(difference)
        message = 'Here is your {0}'.format(self.product)
        if difference != 0:
            message += ' and ${0} change'.format(-difference)
        self.balance = 0
        self.stock -= 1
        return message + '.'