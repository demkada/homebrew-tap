# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.0.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.0.0/argy-darwin-x64.zip"
      sha256 "fabee35a5e9fc2cc7c572a9debe005ed1660b9cbe8330e0ce35c7e4689dad310"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.0.0/argy-darwin-arm64.zip"
      sha256 "7a9ac107f5d6acba0ee1ec706c1f53d21af9c36b1b2f20294e671c0fe79b3e1e"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.0.0/argy-linux-x64.tar.gz"
      sha256 "dc462d1524a3733063fb46f8105238db95878f963d6a8cf8d4c4e4d4d04678f0"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.0.0/argy-linux-arm64.tar.gz"
      sha256 "96c2e812447e43a263025cdd2a01ba85ed430df196e565c87ad9f03b04938481"
      def install
        bin.install "argy"
      end
    end
  end
end
