def dictionary
 hash = {"hello" => 'hi',
   "to" => '2',
   "two" => '2',
   "too" => '2',
   "for" => '4',
   "four" => '4',
   'be' => 'b',
   'you' => 'u',
   "at" => "@",
   "and" => "&"}
end


def word_substituter(string)
 sentence = string.split
 keys = dictionary.keys
 sentence.each_with_index do |word,index|
   keys.each do |key|
     if word.downcase == key
       sentence[index] = dictionary[key]
     end
   end
 end
 sentence.join(" ")
end

def bulk_tweet_shortener(array)
 array.each do |sentence|
   puts word_substituter(sentence)
 end
end

def selective_tweet_shortener(string)
 if string.length > 140
   word_substituter(string)
 else
   string
 end
end

def shortened_tweet_truncator(string)
 if string.length > 140
   answer = word_substituter(string)
   if answer.length > 140
     final = answer[0..136] + "..."
     final
   end
 else
   string
 end
end
