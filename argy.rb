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
      sha256 "ce62efe1cdf8ad54b70ed1e247a022ad6cd43f73b9821e1a7904539c4efb63dc"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.0/argy-darwin-arm64.zip"
      sha256 "5cee726fa894b684adf8e6c277b8fcaf89a4134ee6e9541a10ca96c4afa3c571"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.0/argy-linux-x64.tar.gz"
      sha256 "96076bbb28cef1f4b386780738266ba5221e8aa80f9047fe1852c60656caa4bf"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.0/argy-linux-arm64.tar.gz"
      sha256 "a742ee74d097595b5ea12b1c6092acf68054648e06a8b08639078911aec7232d"
      def install
        bin.install "argy"
      end
    end
  end
end
