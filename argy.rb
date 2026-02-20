# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "0.0.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v0.0.1/argy-darwin-x64.zip"
      sha256 "057757959999f9045fc14dd0e3ee98de6b2746bc0c94ccc2f34b5e712e6bca52"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v0.0.1/argy-darwin-arm64.zip"
      sha256 "22b34f33325c4daf5d9d41732c1010e344592ef43407bcbd4f42904c35adc9e8"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v0.0.1/argy-linux-x64.tar.gz"
      sha256 "ebeafd1939ab4114bb0edb44eeccead3e80289453cd249d2d194393888522a7f"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v0.0.1/argy-linux-arm64.tar.gz"
      sha256 "6e06aec90112834999ed043b8ea04e893763b9900665ad42766c5b9455990815"
      def install
        bin.install "argy"
      end
    end
  end
end
