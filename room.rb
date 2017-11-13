class Room

  attr_reader :name, :guests, :songs, :capacity, :price

  def initialize (name, capacity, price)
    @name = name
    @guests = []
    @songs = []
    @capacity = capacity
    @price = price
  end

  def add_guest(g)
    @guests << g
  end

  def add_song(s)
    @songs << s
  end

  def remove_all_guests()
    @guests.clear
  end

  def room_full?
    if @guests.count==@capacity
      return true
    else
      return false
    end
  end

  end


  # def guest_not_admitted
  #   if room_full?
  #     return "Sorry we have reached capacity."
  #   else
  #     return "Welcome"
  #   end
  # end
