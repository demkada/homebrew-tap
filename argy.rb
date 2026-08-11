# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.3.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.3.1/argy-darwin-x64.zip"
      sha256 "1891c31f9a84ab36511c5f37279e9a52e671f4a006c497e657a8867112b59768"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.3.1/argy-darwin-arm64.zip"
      sha256 "e956ac2096012c781eb49cfb6bcf2a323e69b76cb493578dcec8f9dabda94c39"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.3.1/argy-linux-x64.tar.gz"
      sha256 "15f52f24dbfd7b8759c2ac83c23265cec15b1aaf23e84905a44c3ac7903470a2"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.3.1/argy-linux-arm64.tar.gz"
      sha256 "86d1d6ac22b96e4825307a5140f7c78f44d9aac0ff8545cac7b1ffa3d2a9e0ec"
      def install
        bin.install "argy"
      end
    end
  end
end
