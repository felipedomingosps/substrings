def substrings(string, dictionary)
    result_hash = Hash.new(0)

    string_array = string.split(" ")

    dictionary.each do |dictionary_word|
        string_array.each do |string_word|
            if string_word.downcase.include?(dictionary_word.downcase) then
                result_hash[dictionary_word] += 1
            end
        end
    end
    result_hash
end

#Test

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)

puts substrings("Howdy partner, sit down! How's it going?", dictionary)