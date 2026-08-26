# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.5.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.5.1/argy-darwin-x64.zip"
      sha256 "1e0fea841789e9c5bb2e33a7edcf0ec9c34c7b7ccfdfaaff2ce2c2ecb81d1703"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.5.1/argy-darwin-arm64.zip"
      sha256 "4c6f2a7fcd6d99ab576566a67f427e4bedf1a72513eae6dc162a6274c193e03e"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.5.1/argy-linux-x64.tar.gz"
      sha256 "4328508e496550ab09e6d8b545420f5171015ad2aa2bd8ee792ff1f9e93f8dd4"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.5.1/argy-linux-arm64.tar.gz"
      sha256 "b0a132e79da243d8ffcdddba906e10a61180f883d819b398921fda161cf1457f"
      def install
        bin.install "argy"
      end
    end
  end
end
