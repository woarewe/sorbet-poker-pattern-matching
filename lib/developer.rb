# typed: strict

class Developer
  extend T::Sig

  sig { returns(String) }
  attr_reader :name

  sig { returns(T::Array[String]) }
  attr_reader :languages

  sig { returns(Integer) }
  attr_reader :years_of_experience

  sig { params(name: String, years_of_experience: Integer, languages: T::Array[String]).void}
  def initialize(name:, years_of_experience:, languages: [])
    @name = name
    @languages = languages
    @years_of_experience = years_of_experience
  end

  sig { returns(String) }
  def summary
    <<~SUMMARY
      Name: #{name}
      Experience: #{years_of_experience} years
      Languages: #{languages.join(", ")}
    SUMMARY
  end
end
