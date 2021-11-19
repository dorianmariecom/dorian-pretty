Gem::Specification.new do |s|
  s.name = "dorian-pw"
  s.version = "0.2.0"
  s.summary = "`prettier --write [FILES...]` that allows line numbers"
  s.description =
    s.summary + "\n\n" +
      "e.g. `pw app/models/user.rb:34` and `pw spec/spec_helper.rb`"
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.fr"
  s.files = ["lib/dorian/pw.rb"]
  s.executables << "pw"
  s.homepage = "https://github.com/dorianmariefr/pw"
  s.license = "MIT"
  s.metadata = { "rubygems_mfa_required" => "true" }
end
