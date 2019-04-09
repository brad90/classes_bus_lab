require("minitest/autorun")
require("minitest/rg")

require_relative("../person.rb")

class PersonTest < MiniTest::Test

  def setup
    @person1 = Person.new("Ms Frizzle", 35)
  end

  def test_person_name
    assert_equal("Ms Frizzle", @person1.name)
  end

  def test_person_age
    assert_equal(35, @person1.age)
  end

end
