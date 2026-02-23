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
      sha256 "0e3dff0bfc12d55519dbd23abfb08e1bfb914a227f7ea548396845d7a285bfa8"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v0.0.1/argy-darwin-arm64.zip"
      sha256 "b047c344c198ab7dc6fb8869e7ccc5d60254550febf6059f47d23830ac750319"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v0.0.1/argy-linux-x64.tar.gz"
      sha256 "ba20bb4702d1694f6f7393549cc4c5137d9b47488b78221739e3c0054e6de3bb"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v0.0.1/argy-linux-arm64.tar.gz"
      sha256 "5552a4ef3de776b810e4c61964c153f0031c0925225b04363b483d2d1caaeb3d"
      def install
        bin.install "argy"
      end
    end
  end
end
