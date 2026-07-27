# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.1.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.1.0/argy-darwin-x64.zip"
      sha256 "f9ae0837b9aa7d2dc67a2ba70a36b10e3ac3551425c0e1b0a216e488993e11f0"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.1.0/argy-darwin-arm64.zip"
      sha256 "d434ac7b4e087e58e6f72ebc01c1f77146dbc4f6703ecc54fa8233bddf54888d"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.1.0/argy-linux-x64.tar.gz"
      sha256 "cc5b1bd8c25d570165a04a59faf233d3a6d9e999ca4b9a89bafdfb26c64be80e"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.1.0/argy-linux-arm64.tar.gz"
      sha256 "08fad1172413de0c7d8adb0332dd94d6c0332fec7cfcd438914eb4f65cb3c474"
      def install
        bin.install "argy"
      end
    end
  end
end
