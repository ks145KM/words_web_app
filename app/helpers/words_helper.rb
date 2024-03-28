module WordsHelper
    def link_to_review(word_name)
        selected_index = @words.index{|w| w[:name] == word_name}
        link_to word_name, review_dictionary_words_path(@dictionary, selected_index: selected_index)
    end
end
