require('minitest/autorun')
require('minitest/rg')
require_relative('../models/wordform')

class Testwordformatter < MiniTest::Test

def setup
@word = Wordformatter.new('code clan')
end

def test_upcase
  assert_equal('CODE CLAN', @word.upcase)
end

def test_camel
  assert_equal('CodeClan', @word.camel)
end



end