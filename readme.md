# pirate-challenge

You are tasked with writing a ruby library to "piratize" ruby objects.
The specification for piratization is outlined below.

- Strings should be translated to "pirish", consider looking at the talk\_like\_a\_pirate gem
- The following should be removed from any instances of Strings: "gold", "treasure", "coin", "coins"
- Hashes and Arrays should be recursively processed, and their values (but not keys) also "piratized"

- Any floats should be converted to the nearest rational where 8 is the denominator, eg 2.5 becomes 20/8 and 0.3 becomes 2/8
- Any values are passed to a block if one is provided for additional processing
- If it encounters an instance that includes the module Ship it should call #board! on it
- If #board! raises PartyRepelledError it should replace the instance with a new instance of ShipWreck
- If #board! raises NoTreasureError it should print "Ya! No treasure were found me 'earty!" and continue
- Symbols should raise WhatBeThisError with the message "'Ere, what be a 'symbol'"
- Version controlled with git
- You may use any 3rd party code you wish, ideally gems will be managed with bundler
- Available as a class method, eg Piratize.process my_object
- Available as a module that can be added to any classes
- Available as a method on the Ruby classes: String, Hash, Array, Float
- Some tests, what level of coverage is up to you

You must include the following code:

````
class PartyRepelledError < StandardError ; end
class NoTreasureError < StandardError ; end
class WhatBeThisError < StandardError ; end

module Ship

  def initialize size, treasure
    @size = size
    @treasure = treasure
    @sunk = false
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



end
````

Note this code is intentionally incomplete, you may add to this code, but not change what is already there.

You have exactly one hour, you are not necessary expected to implement all of the above,
but at the end of one hour you should have "something of value", ie it should do a few things well
rather than all badly. It is up to you to consider what demonstrates your skills best within the
hour and prioritise accordingly.

Some of things we are looking for in this challenge:

- Recursion
- Monkey patching
- Loops
- Blocks
- Modules
- Gems and Bundler
- Testing
- Version control with Git
- Regex
- Exception handling

This is a simple test to sanity test your basic skills, certain parts of the spec are intentially unclear or ambigious.
It is not designed to trip you up but to test your abililty to recognise uncertainty. If you are unsure about anything you are encouraged to ask further questions.