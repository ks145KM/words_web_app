class DictionariesController < ApplicationController
  
  def new
    @dictionary = Dictionary.new
    @dictionaries = Dictionary.all
  end


  def create
    @dictionary = Dictionary.new(dictionary_params)
    if @dictionary.save
      redirect_to root_path
    else
      @dictionaries = Dictionary.all
      render 'new', status: :unprocessable_entity
    end
  end

end

private
def dictionary_params
  params.require(:dictionary).permit(:name)
end
