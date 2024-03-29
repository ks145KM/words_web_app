module WordsHelper
    def link_to_review(word_name)
        start_index = @words.index{|w| w[:name] == word_name}
        link_to word_name, review_dictionary_words_path(@dictionary, start_index: start_index)
    end
end
