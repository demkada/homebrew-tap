# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.0/argy-darwin-x64.zip"
      sha256 "39bf7058967106f68ccac3bdc0556a650976df65332221a100e44af59fb2d3d4"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.0/argy-darwin-arm64.zip"
      sha256 "cf88c8dab18161bc047a95b9d9c50af156983ca45a8f746686c5963729994f6c"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.0/argy-linux-x64.tar.gz"
      sha256 "1024a8dce71d250ef578c94c00ff33b1b9c6772095cfd1d076e4bcfbed712b96"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.0/argy-linux-arm64.tar.gz"
      sha256 "aa27653e3a1cd2c378ea22ca80621c1cb59901860bef72670d6c47449a4c69a8"
      def install
        bin.install "argy"
      end
    end
  end
end
