# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.5.4"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.5.4/argy-darwin-x64.zip"
      sha256 "82d5a5ca3b8672434d913b308a060e7e339bab8e0d3b129495a85869435b5d74"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.5.4/argy-darwin-arm64.zip"
      sha256 "793bbbad02fcd5ca8ab2211a4423d884c1c3bbf5c2ca48eec870827e61ff0a29"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.5.4/argy-linux-x64.tar.gz"
      sha256 "ed553be49b00d5409aa297d8f29d1ee4990257c9220526b6870e2d5a7900e2a7"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.5.4/argy-linux-arm64.tar.gz"
      sha256 "24d10747e70fcefa16ed4da6d7bdddc776c9010b971ff03e564483c6d0634d62"
      def install
        bin.install "argy"
      end
    end
  end
end
