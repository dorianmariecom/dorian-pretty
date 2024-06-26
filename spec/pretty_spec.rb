# frozen_string_literal: true

require "spec_helper"
require "securerandom"
require "tmpdir"
require "tempfile"

RSpec.describe "pretty" do
  it "works" do
    tempdir = Dir.mktmpdir
    ruby_tempfile = Tempfile.create([SecureRandom.hex, ".rb"], tempdir)
    File.write(ruby_tempfile, "a               = 1")
    pwd = Dir.pwd

    Dir.chdir(tempdir) do
      `git init && git add . && git commit -m "test from dorian-pretty"`

      expect(`#{pwd}/bin/pretty`).to include(File.basename(ruby_tempfile))
      expect(File.read(ruby_tempfile)).to eq("a = 1\n")
    end
  ensure
    begin
      File.delete(ruby_tempfile)
    rescue StandardError
      nil
    end
    begin
      Dir.delete(tempdir)
    rescue StandardError
      nil
    end
  end
end
