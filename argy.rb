# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.8.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.8.2/argy-darwin-x64.zip"
      sha256 "4e9a41ad60d732a467e0c9c163e594df4cecda52ed5e3f8211b45316680d51d4"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.8.2/argy-darwin-arm64.zip"
      sha256 "784d87f67b63f8df14a7ddaa534e47c4ce878a2969059c2f251ab71461073a7d"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.8.2/argy-linux-x64.tar.gz"
      sha256 "57a24fbe8193c405175e3c5ed9fb02ee311451ea41512a0227f8be2c5d0b3b48"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.8.2/argy-linux-arm64.tar.gz"
      sha256 "e332555881113afe2e4e64db5dafc358e6d8f783d6a64028c02b4be102890586"
      def install
        bin.install "argy"
      end
    end
  end
end
