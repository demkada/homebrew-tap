# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.10.4"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.4/argy-darwin-x64.zip"
      sha256 "98d8cf975dd1fc1a28e1d3a199967442757f1de88b3b068ce20e16d988152a32"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.4/argy-darwin-arm64.zip"
      sha256 "dc53be6e7f9229011d5be80d40489f5d3c2e940cd4cb64f1421bda3938659990"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.4/argy-linux-x64.tar.gz"
      sha256 "7204858efc3afa17942b0b5e77034b1bb74b5ca56ab8e4ec7efbd2eb4ff7d3c1"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.4/argy-linux-arm64.tar.gz"
      sha256 "014b50e3bbc70ba8f1b58e5942b0e10244cce369e367af85dda5397b23e5ff7f"
      def install
        bin.install "argy"
      end
    end
  end
end
