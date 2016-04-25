require_relative 'helper.rb'
require_relative 'error.rb'

class PartyRepelledError < StandardError ; end
class NoTreasureError < StandardError ; end
class WhatBeThisError < StandardError ; end



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