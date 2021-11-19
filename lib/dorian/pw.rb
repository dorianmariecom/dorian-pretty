require "shellwords"

module Dorian
  class Pw
    def self.run
      if ARGV.size < 1 || ARGV[0] == "--help" || ARGV[0] == "-h"
        puts "USAGE: pw [FILES...]"
        exit
      end

      system(
        [
          "prettier",
          "--write",
          *ARGV.map { |arg| arg.split(":").first }
        ].shelljoin
      )
    end
  end
end
