class Invoice

  def initialize(subtotal)
    @subtotal = subtotal
    @items    = []
  end

  def with_tax
    tax_amount = @subtotal * 0.20
    @subtotal + tax_amount
  end

  def add_item(item)
    # The << method is often used to add an item to the end of an array
    @items << item
    @subtotal += item.price
  end

end

# instantiate invoices using its initializer (constructor):
invoice1 = Invoice.new(100)