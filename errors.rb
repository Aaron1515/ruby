class WhatBeThisError < StandardError
  raise Argumenterror.new("'Ere, what be a 'symbol'")
end

class NoTreasureError < StandardError
  return Argumenterror.new("There's not Booty here!")
end
