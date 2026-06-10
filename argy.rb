# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.12.15"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.15/argy-darwin-x64.zip"
      sha256 "3420d218c0675b98224efebf36683e1713fa1d5a927f282ca010c35a2f5b5acc"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.15/argy-darwin-arm64.zip"
      sha256 "4cb8acd0e4a84ca391b3ac75d7f9f1e488dbbac41d0b4944f4900d4b7b8cf0b2"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.15/argy-linux-x64.tar.gz"
      sha256 "c63ee6e043c9234162f2f4e4632d9182a733e659330480081a35af87b3cb2c97"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.15/argy-linux-arm64.tar.gz"
      sha256 "178d5405f0e51ef4a726283570d8f218f69301357ec775272109112f833eb76f"
      def install
        bin.install "argy"
      end
    end
  end
end
