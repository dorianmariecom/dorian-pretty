# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "dorian-pretty"
  s.version = File.read("VERSION").strip
  s.summary = "prettify"
  s.description = s.summary
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.com"
  s.files = ["bin/pretty"]
  s.executables << "pretty"
  s.homepage = "https://github.com/dorianmariecom/dorian-pretty"
  s.license = "MIT"
  s.metadata = { "rubygems_mfa_required" => "true" }
  s.add_dependency "dorian-arguments", ">= 2.0.1", "< 3"
  s.add_dependency "git", ">= 5.4.1", "< 6"
  s.add_dependency "syntax_tree", ">= 6.3.0", "< 7"
  s.required_ruby_version = ">= 4.0"
end
