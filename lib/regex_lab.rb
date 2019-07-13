def starts_with_a_vowel?(word)
  if word.match(/\b[AEIOUaeiou][a-z]*\b/)
    return true
  else
    return false
  end
end

def words_starting_with_con(text)
  text.scan(/\bcon[a-z]*\b/)
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun[a-z]*ing\b/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if not text.match(/[\?\.\!]$/)
    return false
  end

  text.scan(/.*[\?\.\!]/).each do |sentence|
    if not sentence.match(/\A[A-Z]/)
      return false
    end
  end
  return true
end

def valid_phone_number?(phone_array)
  if phone_array.match(/([0-9] ?){10}/) || phone_array.match(/(\([0-9]{3}\)([0-9]{3}-[0-9]{4})\b)/) || phone_array.match(/\b([0-9]{7})\b/)
    true
  else
    false
  end
end
#if phone_array.match(/([0-9] ?){10}/) || phone_array.match(/(\([0-9]{3}\)([0-9]{3}-[0-9]{4})\b)/) || phone_array.match(/\b([0-9]{7})\b/)
#phone_array.match(/(\d{10}|\d{7}|\d{4}|\d{3})/)

