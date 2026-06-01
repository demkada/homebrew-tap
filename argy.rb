# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.12.11"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.11/argy-darwin-x64.zip"
      sha256 "ba60b1a1e91bd640fac82b457602a7da7712797c6e77730243ac8bc49209220e"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.11/argy-darwin-arm64.zip"
      sha256 "20d26bea067902a5515bfcd775f8e3acd0f73c9d39592082dfb76f794414eb85"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.11/argy-linux-x64.tar.gz"
      sha256 "0859e0558897c35f5ffe8ab304fb362aba0a64dc63152bab244180c338a38ee4"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.11/argy-linux-arm64.tar.gz"
      sha256 "de930d43e65114abab4fca1dcd9170862113e75bbf032ba74dbe2218127aff97"
      def install
        bin.install "argy"
      end
    end
  end
end
