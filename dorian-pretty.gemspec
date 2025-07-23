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
  s.add_dependency "dorian-arguments"
  s.add_dependency "git"
  s.add_dependency "syntax_tree"
  s.required_ruby_version = ">= 3.0"
end
