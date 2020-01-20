require('minitest/autorun')
require('minitest/reporters')
require_relative('../codeclan_student')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestCodeClanStudent < MiniTest::Test
  def setup
    @student1 = CodeClanStudent.new("Luke", "E37")
  end

  def test_student_name
  assert_equal("Luke", @student1.student_name())
  end

def test_student_cohort
  assert_equal("E37", @student1.student_cohort())
end

def test_new_student_name
  assert_equal("Rhys", @student1.new_student_name("Rhys"))
end

def test_new_student_cohort
  assert_equal("E38", @student1.new_student_cohort("E38"))
end

def test_student_can_talk
  speak = @student1.student_can_talk("I am in E37!")
  assert_equal("I am in E37!", speak)
end

def test_student_fav_lang
  fav_lang = @student1.student_fav_lang("Ruby")
  assert_equal("My favourite programming language is Ruby!", fav_lang)
end

end
