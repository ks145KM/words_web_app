require "test_helper"

class DictionaryTest < ActiveSupport::TestCase
  
  def setup
    @dictionary = Dictionary.new(name: "english")
  end
  
  test "should be valid" do
    @dictionary.name = "a"*21
    assert_not @dictionary.valid?
  end
end
