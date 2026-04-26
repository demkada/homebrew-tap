# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.6.5"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.6.5/argy-darwin-x64.zip"
      sha256 "82548b7b1276c381931e483bc5d01ca044e0533ed70bf4f6f4c49f83c86be87d"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.6.5/argy-darwin-arm64.zip"
      sha256 "d090f587939f3545b5cdafdf35b3bc675a09d8b466a17b62c6a49b5832f01bfb"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.6.5/argy-linux-x64.tar.gz"
      sha256 "1cb140db0da3ad1487d7c422b8a1371944e102014f2793bea1fa5098b9aa58e7"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.6.5/argy-linux-arm64.tar.gz"
      sha256 "34a381fa8ce9d3fbf091a4c71321c52aac018cc5add25515c9ce2eebf2b6292d"
      def install
        bin.install "argy"
      end
    end
  end
end
