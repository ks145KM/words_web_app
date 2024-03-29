class WordsController < ApplicationController

    include WordsHelper

    def index
        @dictionary = Dictionary.find(params[:dictionary_id])
        @word = @dictionary.words.new
        @words = @dictionary.words.all
    end

    def review
        @dictionary = Dictionary.find(params[:dictionary_id])
        @words = @dictionary.words.all
        @start_index = params[:start_index].to_i
        @word = @words[@start_index]
    end

    def create
        @dictionary = Dictionary.find(params[:dictionary_id])
        @word = @dictionary.words.build(word_params)
  
        if @word.save
            redirect_to dictionary_words_path(@dictionary)
        else
            render 'index', status: :unprocessable_entity
        end
    end

    def word_params
        params.require(:word).permit(:name, :meaning)
    end

end
