class CodeClanStudent
  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def student_name
    return @name
  end

  def student_cohort
    return @cohort
  end

  def new_student_name(new_name)
    @name = new_name
  end

  def new_student_cohort(new_cohort)
    @cohort = new_cohort
  end

  def student_can_talk(sentence)
    return sentence
  end

  def student_fav_lang(language)
    return "My favourite programming language is #{language}!"
  end

end
