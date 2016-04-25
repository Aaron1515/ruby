require "talk_like_a_pirate"

# Custom errors
class PartyRepelledError < StandardError ; end
class WhatBeThisError < StandardError
  def initialize
    super("'Ere, what be a 'symbol'")
  end
end

class NoTreasureError < StandardError
  def initialize
    super("Ya! No treasure were found me 'earty!")
  end
end

module Ship

  def initialize size, treasure
    @size = size
    @treasure = treasure
    @sunk = false
    board!
  end

  def board! boarding_party

    raise "boarding party must be an instance of BoardingParty" unless boarding_party.is_a?(BoardingParty)

    if boarding_party.size <= @size
      raise PartyRepelledError.new
    end

    if @treasure == 0
      raise NoTreasureError.new
    end

    @treasure = 0

  end

end

class ShipWreck

  def initialize ship
    @original_ship = ship
    ship.sink!
  end

  def sink!
  self.original_ship = "Ye Ship has been sank!"
  end
end




# Helper methods
def piratize(normal_sentence)
  words_to_remove = ["gold", "treasure", "coin", "coins"]

  piratish =  TalkLikeAPirate.translate(normal_sentence)
  arry_words = piratish.split - words_to_remove
  return arry_words.join(" ")
end

def numberConverter(number)
  top_num = number * 8
  return top_num.round.to_s + "/8"
end