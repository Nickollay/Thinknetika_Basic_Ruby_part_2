# The letter Y is sometimes considered a sixth vowel because it can sound like other vowels.
vowels = ['a', 'e', 'i', 'o', 'u', 'y']
abc = ('a'..'z').to_a
vowels_abc_id = {}
vowels.each do |vowel|
  vowels_abc_id.store(vowel, abc.index(vowel) + 1)
end
puts vowels_abc_id