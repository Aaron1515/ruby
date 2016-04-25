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
