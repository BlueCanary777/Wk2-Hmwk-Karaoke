class Guest

  attr_reader :name, :wallet

  def initialize (name, wallet)
    @name = name
    @wallet = wallet
  end

  def entry(room)
    @wallet -= room.price()
  end

end
