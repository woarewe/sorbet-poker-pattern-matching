# typed: strict

require_relative "config/boot"

developer = Developer.new(
  name: "Rost",
  years_of_experience: 6,
  languages: ["Ruby", "TypeScript", "Go"]
)

puts developer.summary
