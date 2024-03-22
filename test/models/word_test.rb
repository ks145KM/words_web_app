require "test_helper"

class WordTest < ActiveSupport::TestCase
  
  def setup
    @dictionary = dictionaries(:one)
    @word = @dictionary.words.build(name:"apple", meaning:"red fruit")
  end

  test "should be valid" do
    assert @word.valid?
  end

  test "dictionary id should be present" do
    @word.dictionary_id = nil
    assert_not @word.valid?
  end
end
