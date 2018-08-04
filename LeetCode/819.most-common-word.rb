# @param {String} paragraph
# @param {String[]} banned
# @return {String}
def most_common_word(paragraph, banned)
    banned = banned.map(&:downcase)
    hash = Hash.new(0)
    max_count = 0
    max_word = nil
    paragraph
    .downcase
    .gsub(/[!?',;.]/, "")
    .split(" ")
    .each do |w|
        unless banned.include? w
            hash[w] += 1
            if hash[w] > max_count
                max_count = hash[w]
                max_word = w
            end
        end
    end
    max_word
end
