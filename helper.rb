require "talk_like_a_pirate"


def piratize(normal_sentence)
  words_to_remove = ["gold", "treasure", "coin", "coins"]
  arry_words = normal_sentence.split - words_to_remove
  priate_talk = arry_words.join(" ")
  return TalkLikeAPirate.translate(priate_talk)
end

def numberConverter(number)
  top_num = number * 8
  return top_num.round.to_s + "/8"
end
