require "talk_like_a_pirate"


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
