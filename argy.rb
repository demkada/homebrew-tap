# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.13"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.13/argy-darwin-x64.zip"
      sha256 "21c0cba671fc99a52f07f7fb76cab1bb8d3dc917228978a1a5386515e00c7da9"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.13/argy-darwin-arm64.zip"
      sha256 "0d82f1db5b6dd3beff6a12a2c900062e83f3ea52b9d069e7fc546b59bd2a2e38"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.13/argy-linux-x64.tar.gz"
      sha256 "e0b786facfef463e8f37c3dc36807a1be82f110a830907bf81e233cc3412b280"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.13/argy-linux-arm64.tar.gz"
      sha256 "0a2fc9976cf159a5707874f6db19dea7f798839f288c1d0c62b51e3b14b160d2"
      def install
        bin.install "argy"
      end
    end
  end
end
