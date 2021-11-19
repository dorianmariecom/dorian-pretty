require "shellwords"

module Dorian
  class Pw
    def self.run
      if ARGV.size < 1
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
