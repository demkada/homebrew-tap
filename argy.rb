# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.6.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.6.2/argy-darwin-x64.zip"
      sha256 "14eb6869bf9bac54292a1d8b8a00ea77c3e96c70a349d7a0aa320d77ca0189fe"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.6.2/argy-darwin-arm64.zip"
      sha256 "8943b84b8cd042ba9b1b39cf8e662dc9054f0483591563f8483936cdbb6c3be1"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.6.2/argy-linux-x64.tar.gz"
      sha256 "0f5fdd8a51fe1014510c6878dc2774820be95fb24c34cbb58328d92d34449352"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.6.2/argy-linux-arm64.tar.gz"
      sha256 "9add2d692f6afdb19a3c36e17aa5360aefdf6fe571a8b6623961b02450f38c46"
      def install
        bin.install "argy"
      end
    end
  end
end
