# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "dorian-pretty"
  s.version = "0.2.2"
  s.summary = "Formats files in the current directory"
  s.description = "#{s.summary}\n\ne.g. `pretty`"
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.com"
  s.files = ["bin/pretty"]
  s.executables << "pretty"
  s.homepage = "https://github.com/dorianmariecom/dorian-pretty"
  s.license = "MIT"
  s.metadata = { "rubygems_mfa_required" => "true" }
  s.add_dependency "git", "~> 1"
  s.add_dependency "syntax_tree", "~> 6"
end
